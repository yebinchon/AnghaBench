; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_icache.h_xfs_fs_eofblocks_from_user.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_icache.h_xfs_fs_eofblocks_from_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_fs_eofblocks = type { i64, i32, i32, i32, i32, i32, i32*, i32 }
%struct.xfs_eofblocks = type { i32, i32, i32, i32, i32 }

@XFS_EOFBLOCKS_VERSION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XFS_EOF_FLAGS_VALID = common dso_local global i32 0, align 4
@INVALID_UID = common dso_local global i32 0, align 4
@XFS_EOF_FLAGS_UID = common dso_local global i32 0, align 4
@INVALID_GID = common dso_local global i32 0, align 4
@XFS_EOF_FLAGS_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_fs_eofblocks*, %struct.xfs_eofblocks*)* @xfs_fs_eofblocks_from_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_fs_eofblocks_from_user(%struct.xfs_fs_eofblocks* %0, %struct.xfs_eofblocks* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_fs_eofblocks*, align 8
  %5 = alloca %struct.xfs_eofblocks*, align 8
  store %struct.xfs_fs_eofblocks* %0, %struct.xfs_fs_eofblocks** %4, align 8
  store %struct.xfs_eofblocks* %1, %struct.xfs_eofblocks** %5, align 8
  %6 = load %struct.xfs_fs_eofblocks*, %struct.xfs_fs_eofblocks** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_fs_eofblocks, %struct.xfs_fs_eofblocks* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @XFS_EOFBLOCKS_VERSION, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %109

14:                                               ; preds = %2
  %15 = load %struct.xfs_fs_eofblocks*, %struct.xfs_fs_eofblocks** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_fs_eofblocks, %struct.xfs_fs_eofblocks* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @XFS_EOF_FLAGS_VALID, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %109

25:                                               ; preds = %14
  %26 = load %struct.xfs_fs_eofblocks*, %struct.xfs_fs_eofblocks** %4, align 8
  %27 = getelementptr inbounds %struct.xfs_fs_eofblocks, %struct.xfs_fs_eofblocks* %26, i32 0, i32 7
  %28 = call i64 @memchr_inv(i32* %27, i32 0, i32 4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.xfs_fs_eofblocks*, %struct.xfs_fs_eofblocks** %4, align 8
  %32 = getelementptr inbounds %struct.xfs_fs_eofblocks, %struct.xfs_fs_eofblocks* %31, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @memchr_inv(i32* %33, i32 0, i32 8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %25
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %109

39:                                               ; preds = %30
  %40 = load %struct.xfs_fs_eofblocks*, %struct.xfs_fs_eofblocks** %4, align 8
  %41 = getelementptr inbounds %struct.xfs_fs_eofblocks, %struct.xfs_fs_eofblocks* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.xfs_eofblocks*, %struct.xfs_eofblocks** %5, align 8
  %44 = getelementptr inbounds %struct.xfs_eofblocks, %struct.xfs_eofblocks* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.xfs_fs_eofblocks*, %struct.xfs_fs_eofblocks** %4, align 8
  %46 = getelementptr inbounds %struct.xfs_fs_eofblocks, %struct.xfs_fs_eofblocks* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.xfs_eofblocks*, %struct.xfs_eofblocks** %5, align 8
  %49 = getelementptr inbounds %struct.xfs_eofblocks, %struct.xfs_eofblocks* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.xfs_fs_eofblocks*, %struct.xfs_fs_eofblocks** %4, align 8
  %51 = getelementptr inbounds %struct.xfs_fs_eofblocks, %struct.xfs_fs_eofblocks* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.xfs_eofblocks*, %struct.xfs_eofblocks** %5, align 8
  %54 = getelementptr inbounds %struct.xfs_eofblocks, %struct.xfs_eofblocks* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @INVALID_UID, align 4
  %56 = load %struct.xfs_eofblocks*, %struct.xfs_eofblocks** %5, align 8
  %57 = getelementptr inbounds %struct.xfs_eofblocks, %struct.xfs_eofblocks* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.xfs_fs_eofblocks*, %struct.xfs_fs_eofblocks** %4, align 8
  %59 = getelementptr inbounds %struct.xfs_fs_eofblocks, %struct.xfs_fs_eofblocks* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @XFS_EOF_FLAGS_UID, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %39
  %65 = call i32 (...) @current_user_ns()
  %66 = load %struct.xfs_fs_eofblocks*, %struct.xfs_fs_eofblocks** %4, align 8
  %67 = getelementptr inbounds %struct.xfs_fs_eofblocks, %struct.xfs_fs_eofblocks* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @make_kuid(i32 %65, i32 %68)
  %70 = load %struct.xfs_eofblocks*, %struct.xfs_eofblocks** %5, align 8
  %71 = getelementptr inbounds %struct.xfs_eofblocks, %struct.xfs_eofblocks* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.xfs_eofblocks*, %struct.xfs_eofblocks** %5, align 8
  %73 = getelementptr inbounds %struct.xfs_eofblocks, %struct.xfs_eofblocks* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @uid_valid(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %64
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %109

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80, %39
  %82 = load i32, i32* @INVALID_GID, align 4
  %83 = load %struct.xfs_eofblocks*, %struct.xfs_eofblocks** %5, align 8
  %84 = getelementptr inbounds %struct.xfs_eofblocks, %struct.xfs_eofblocks* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.xfs_fs_eofblocks*, %struct.xfs_fs_eofblocks** %4, align 8
  %86 = getelementptr inbounds %struct.xfs_fs_eofblocks, %struct.xfs_fs_eofblocks* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @XFS_EOF_FLAGS_GID, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %81
  %92 = call i32 (...) @current_user_ns()
  %93 = load %struct.xfs_fs_eofblocks*, %struct.xfs_fs_eofblocks** %4, align 8
  %94 = getelementptr inbounds %struct.xfs_fs_eofblocks, %struct.xfs_fs_eofblocks* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @make_kgid(i32 %92, i32 %95)
  %97 = load %struct.xfs_eofblocks*, %struct.xfs_eofblocks** %5, align 8
  %98 = getelementptr inbounds %struct.xfs_eofblocks, %struct.xfs_eofblocks* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.xfs_eofblocks*, %struct.xfs_eofblocks** %5, align 8
  %100 = getelementptr inbounds %struct.xfs_eofblocks, %struct.xfs_eofblocks* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @gid_valid(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %91
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %109

107:                                              ; preds = %91
  br label %108

108:                                              ; preds = %107, %81
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %104, %77, %36, %22, %11
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i64 @memchr_inv(i32*, i32, i32) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @gid_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
