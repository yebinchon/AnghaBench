; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_open.c_chmod_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_open.c_chmod_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iattr = type { i32, i32 }

@S_IALLUGO = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i32)* @chmod_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chmod_common(%struct.path* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.iattr, align 4
  %9 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.path*, %struct.path** %4, align 8
  %11 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %6, align 8
  store %struct.inode* null, %struct.inode** %7, align 8
  %15 = load %struct.path*, %struct.path** %4, align 8
  %16 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @mnt_want_write(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %70

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %62, %23
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call i32 @inode_lock(%struct.inode* %25)
  %27 = load %struct.path*, %struct.path** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @security_path_chmod(%struct.path* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %53

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @S_IALLUGO, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @S_IALLUGO, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = or i32 %36, %42
  %44 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @ATTR_MODE, align 4
  %46 = load i32, i32* @ATTR_CTIME, align 4
  %47 = or i32 %45, %46
  %48 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load %struct.path*, %struct.path** %4, align 8
  %50 = getelementptr inbounds %struct.path, %struct.path* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = call i32 @notify_change(%struct.TYPE_2__* %51, %struct.iattr* %8, %struct.inode** %7)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %33, %32
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = call i32 @inode_unlock(%struct.inode* %54)
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = icmp ne %struct.inode* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = call i32 @break_deleg_wait(%struct.inode** %7)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %24

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %53
  %65 = load %struct.path*, %struct.path** %4, align 8
  %66 = getelementptr inbounds %struct.path, %struct.path* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @mnt_drop_write(i32 %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %21
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @mnt_want_write(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @security_path_chmod(%struct.path*, i32) #1

declare dso_local i32 @notify_change(%struct.TYPE_2__*, %struct.iattr*, %struct.inode**) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @break_deleg_wait(%struct.inode**) #1

declare dso_local i32 @mnt_drop_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
