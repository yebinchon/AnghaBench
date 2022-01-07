; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_file.c_squashfs_readpage_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_file.c_squashfs_readpage_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.squashfs_cache_entry = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Unable to read page, block %llx, size %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @squashfs_readpage_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @squashfs_readpage_fragment(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.squashfs_cache_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.TYPE_4__* @squashfs_i(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call %struct.TYPE_4__* @squashfs_i(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.squashfs_cache_entry* @squashfs_get_fragment(i32 %15, i32 %19, i32 %23)
  store %struct.squashfs_cache_entry* %24, %struct.squashfs_cache_entry** %6, align 8
  %25 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %6, align 8
  %26 = getelementptr inbounds %struct.squashfs_cache_entry, %struct.squashfs_cache_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call %struct.TYPE_4__* @squashfs_i(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = call %struct.TYPE_4__* @squashfs_i(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %38)
  br label %49

40:                                               ; preds = %2
  %41 = load %struct.page*, %struct.page** %3, align 8
  %42 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %6, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = call %struct.TYPE_4__* @squashfs_i(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @squashfs_copy_cache(%struct.page* %41, %struct.squashfs_cache_entry* %42, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %40, %30
  %50 = load %struct.squashfs_cache_entry*, %struct.squashfs_cache_entry** %6, align 8
  %51 = call i32 @squashfs_cache_put(%struct.squashfs_cache_entry* %50)
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.squashfs_cache_entry* @squashfs_get_fragment(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @squashfs_i(%struct.inode*) #1

declare dso_local i32 @ERROR(i8*, i32, i32) #1

declare dso_local i32 @squashfs_copy_cache(%struct.page*, %struct.squashfs_cache_entry*, i32, i32) #1

declare dso_local i32 @squashfs_cache_put(%struct.squashfs_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
