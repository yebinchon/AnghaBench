; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_flags_for_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_flags_for_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DCACHE_REGULAR_TYPE = common dso_local global i32 0, align 4
@DCACHE_MISS_TYPE = common dso_local global i32 0, align 4
@DCACHE_DIRECTORY_TYPE = common dso_local global i32 0, align 4
@IOP_LOOKUP = common dso_local global i32 0, align 4
@DCACHE_AUTODIR_TYPE = common dso_local global i32 0, align 4
@IOP_NOFOLLOW = common dso_local global i32 0, align 4
@DCACHE_SYMLINK_TYPE = common dso_local global i32 0, align 4
@DCACHE_SPECIAL_TYPE = common dso_local global i32 0, align 4
@DCACHE_NEED_AUTOMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @d_flags_for_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d_flags_for_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %5 = load i32, i32* @DCACHE_REGULAR_TYPE, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = icmp ne %struct.inode* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @DCACHE_MISS_TYPE, align 4
  store i32 %9, i32* %2, align 4
  br label %100

10:                                               ; preds = %1
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @S_ISDIR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %10
  %17 = load i32, i32* @DCACHE_DIRECTORY_TYPE, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IOP_LOOKUP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %16
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @DCACHE_AUTODIR_TYPE, align 4
  store i32 %40, i32* %4, align 4
  br label %47

41:                                               ; preds = %28
  %42 = load i32, i32* @IOP_LOOKUP, align 4
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %39
  br label %48

48:                                               ; preds = %47, %16
  br label %89

49:                                               ; preds = %10
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IOP_NOFOLLOW, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %49
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @DCACHE_SYMLINK_TYPE, align 4
  store i32 %69, i32* %4, align 4
  br label %89

70:                                               ; preds = %60
  %71 = load i32, i32* @IOP_NOFOLLOW, align 4
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %49
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @S_ISREG(i32 %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i32, i32* @DCACHE_SPECIAL_TYPE, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %76
  br label %89

89:                                               ; preds = %88, %68, %48
  %90 = load %struct.inode*, %struct.inode** %3, align 8
  %91 = call i32 @IS_AUTOMOUNT(%struct.inode* %90)
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @DCACHE_NEED_AUTOMOUNT, align 4
  %96 = load i32, i32* %4, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %8
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @IS_AUTOMOUNT(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
