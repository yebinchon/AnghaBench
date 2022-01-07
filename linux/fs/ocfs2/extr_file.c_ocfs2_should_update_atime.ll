; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_should_update_atime.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_should_update_atime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_3__, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.vfsmount = type { i32 }
%struct.timespec64 = type { i64 }
%struct.ocfs2_super = type { i64 }

@S_NOATIME = common dso_local global i32 0, align 4
@SB_NODIRATIME = common dso_local global i32 0, align 4
@MNT_NOATIME = common dso_local global i32 0, align 4
@MNT_NODIRATIME = common dso_local global i32 0, align 4
@MNT_RELATIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_should_update_atime(%struct.inode* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca %struct.timespec64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 5
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_4__* %11)
  store %struct.ocfs2_super* %12, %struct.ocfs2_super** %7, align 8
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %14 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %18 = call i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %111

21:                                               ; preds = %16
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @S_NOATIME, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %21
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 5
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SB_NODIRATIME, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @S_ISDIR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %21
  store i32 0, i32* %3, align 4
  br label %111

44:                                               ; preds = %37, %28
  %45 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %46 = icmp eq %struct.vfsmount* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %111

48:                                               ; preds = %44
  %49 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %50 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MNT_NOATIME, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %48
  %56 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %57 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MNT_NODIRATIME, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @S_ISDIR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %48
  store i32 0, i32* %3, align 4
  br label %111

69:                                               ; preds = %62, %55
  %70 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %71 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MNT_RELATIME, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %69
  %77 = load %struct.inode*, %struct.inode** %4, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 3
  %81 = call i64 @timespec64_compare(%struct.TYPE_3__* %78, i32* %80)
  %82 = icmp sle i64 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load %struct.inode*, %struct.inode** %4, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 1
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 2
  %88 = call i64 @timespec64_compare(%struct.TYPE_3__* %85, i32* %87)
  %89 = icmp sle i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83, %76
  store i32 1, i32* %3, align 4
  br label %111

91:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %111

92:                                               ; preds = %69
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = call i64 @current_time(%struct.inode* %93)
  %95 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 0
  store i64 %94, i64* %95, align 8
  %96 = bitcast %struct.timespec64* %6 to i8*
  %97 = bitcast %struct.timespec64* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 8, i1 false)
  %98 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %6, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.inode*, %struct.inode** %4, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %99, %103
  %105 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %106 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp sle i64 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %111

110:                                              ; preds = %92
  store i32 1, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %109, %91, %90, %68, %47, %43, %20
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_4__*) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @timespec64_compare(%struct.TYPE_3__*, i32*) #1

declare dso_local i64 @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
