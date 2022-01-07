; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_gfs2_fallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_gfs2_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i64 }
%struct.gfs2_sbd = type { %struct.inode* }
%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_holder = type { i32 }

@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64, i64)* @gfs2_fallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gfs2_fallocate(%struct.file* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.gfs2_sbd*, align 8
  %12 = alloca %struct.gfs2_inode*, align 8
  %13 = alloca %struct.gfs2_holder, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = call %struct.inode* @file_inode(%struct.file* %15)
  store %struct.inode* %16, %struct.inode** %10, align 8
  %17 = load %struct.inode*, %struct.inode** %10, align 8
  %18 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %17)
  store %struct.gfs2_sbd* %18, %struct.gfs2_sbd** %11, align 8
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %19)
  store %struct.gfs2_inode* %20, %struct.gfs2_inode** %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %23 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i64, i64* @EOPNOTSUPP, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %126

31:                                               ; preds = %4
  %32 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %33 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %38 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %37, i32 0, i32 0
  %39 = load %struct.inode*, %struct.inode** %38, align 8
  %40 = icmp ne %struct.inode* %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i64, i64* @EOPNOTSUPP, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %5, align 8
  br label %126

44:                                               ; preds = %35, %31
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = call i32 @inode_lock(%struct.inode* %45)
  %47 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %48 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %51 = call i32 @gfs2_holder_init(i32 %49, i32 %50, i32 0, %struct.gfs2_holder* %13)
  %52 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %13)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %120

56:                                               ; preds = %44
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %56
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %64, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %61
  %70 = load %struct.inode*, %struct.inode** %10, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @inode_newsize_ok(%struct.inode* %70, i64 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %118

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %61, %56
  %80 = load %struct.inode*, %struct.inode** %10, align 8
  %81 = call i32 @get_write_access(%struct.inode* %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %118

85:                                               ; preds = %79
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.file*, %struct.file** %6, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @__gfs2_punch_hole(%struct.file* %91, i64 %92, i64 %93)
  store i32 %94, i32* %14, align 4
  br label %114

95:                                               ; preds = %85
  %96 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %97 = call i32 @gfs2_rsqa_alloc(%struct.gfs2_inode* %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %115

101:                                              ; preds = %95
  %102 = load %struct.file*, %struct.file** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @__gfs2_fallocate(%struct.file* %102, i32 %103, i64 %104, i64 %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %111 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %110, i32 0, i32 0
  %112 = call i32 @gfs2_rs_deltree(i32* %111)
  br label %113

113:                                              ; preds = %109, %101
  br label %114

114:                                              ; preds = %113, %90
  br label %115

115:                                              ; preds = %114, %100
  %116 = load %struct.inode*, %struct.inode** %10, align 8
  %117 = call i32 @put_write_access(%struct.inode* %116)
  br label %118

118:                                              ; preds = %115, %84, %77
  %119 = call i32 @gfs2_glock_dq(%struct.gfs2_holder* %13)
  br label %120

120:                                              ; preds = %118, %55
  %121 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %13)
  %122 = load %struct.inode*, %struct.inode** %10, align 8
  %123 = call i32 @inode_unlock(%struct.inode* %122)
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %5, align 8
  br label %126

126:                                              ; preds = %120, %41, %28
  %127 = load i64, i64* %5, align 8
  ret i64 %127
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i64 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i64) #1

declare dso_local i32 @get_write_access(%struct.inode*) #1

declare dso_local i32 @__gfs2_punch_hole(%struct.file*, i64, i64) #1

declare dso_local i32 @gfs2_rsqa_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @__gfs2_fallocate(%struct.file*, i32, i64, i64) #1

declare dso_local i32 @gfs2_rs_deltree(i32*) #1

declare dso_local i32 @put_write_access(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_dq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
