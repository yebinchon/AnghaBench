; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_inode.c_pstore_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_inode.c_pstore_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.pstore_private = type { %struct.pstore_record* }
%struct.pstore_record = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 (%struct.pstore_record*)* }
%struct.TYPE_4__ = type { %struct.pstore_private* }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @pstore_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pstore_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.pstore_private*, align 8
  %7 = alloca %struct.pstore_record*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = call %struct.TYPE_4__* @d_inode(%struct.dentry* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.pstore_private*, %struct.pstore_private** %10, align 8
  store %struct.pstore_private* %11, %struct.pstore_private** %6, align 8
  %12 = load %struct.pstore_private*, %struct.pstore_private** %6, align 8
  %13 = getelementptr inbounds %struct.pstore_private, %struct.pstore_private* %12, i32 0, i32 0
  %14 = load %struct.pstore_record*, %struct.pstore_record** %13, align 8
  store %struct.pstore_record* %14, %struct.pstore_record** %7, align 8
  %15 = load %struct.pstore_record*, %struct.pstore_record** %7, align 8
  %16 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32 (%struct.pstore_record*)*, i32 (%struct.pstore_record*)** %18, align 8
  %20 = icmp ne i32 (%struct.pstore_record*)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %45

24:                                               ; preds = %2
  %25 = load %struct.pstore_record*, %struct.pstore_record** %7, align 8
  %26 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.pstore_record*, %struct.pstore_record** %7, align 8
  %31 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32 (%struct.pstore_record*)*, i32 (%struct.pstore_record*)** %33, align 8
  %35 = load %struct.pstore_record*, %struct.pstore_record** %7, align 8
  %36 = call i32 %34(%struct.pstore_record* %35)
  %37 = load %struct.pstore_record*, %struct.pstore_record** %7, align 8
  %38 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = call i32 @simple_unlink(%struct.inode* %42, %struct.dentry* %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %24, %21
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_4__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @simple_unlink(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
