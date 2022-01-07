; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_adjust_quota.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_adjust_quota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.inode }
%struct.inode = type { i64, i32, i32 }
%struct.gfs2_quota_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.qc_dqblk = type { i32, i32, i32, i32 }
%struct.gfs2_sbd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.gfs2_quota = type { i8*, i8*, i8* }

@EIO = common dso_local global i32 0, align 4
@QC_SPC_SOFT = common dso_local global i32 0, align 4
@QC_SPC_HARD = common dso_local global i32 0, align 4
@QC_SPACE = common dso_local global i32 0, align 4
@QDF_REFRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i32, i64, %struct.gfs2_quota_data*, %struct.qc_dqblk*)* @gfs2_adjust_quota to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_adjust_quota(%struct.gfs2_inode* %0, i32 %1, i64 %2, %struct.gfs2_quota_data* %3, %struct.qc_dqblk* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.gfs2_quota_data*, align 8
  %11 = alloca %struct.qc_dqblk*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.gfs2_sbd*, align 8
  %14 = alloca %struct.gfs2_quota, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.gfs2_quota_data* %3, %struct.gfs2_quota_data** %10, align 8
  store %struct.qc_dqblk* %4, %struct.qc_dqblk** %11, align 8
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %18 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %17, i32 0, i32 0
  store %struct.inode* %18, %struct.inode** %12, align 8
  %19 = load %struct.inode*, %struct.inode** %12, align 8
  %20 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %19)
  store %struct.gfs2_sbd* %20, %struct.gfs2_sbd** %13, align 8
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %22 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %5
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %26 = call i32 @gfs2_unstuff_dinode(%struct.gfs2_inode* %25, i32* null)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %6, align 4
  br label %169

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %5
  %33 = call i32 @memset(%struct.gfs2_quota* %14, i32 0, i32 24)
  %34 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %35 = bitcast %struct.gfs2_quota* %14 to i8*
  %36 = call i32 @gfs2_internal_read(%struct.gfs2_inode* %34, i8* %35, i32* %8, i32 24)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %6, align 4
  br label %169

41:                                               ; preds = %32
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 %43, 24
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %15, align 4
  %48 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %14, i32 0, i32 0
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @be64_add_cpu(i8** %48, i64 %49)
  %51 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %14, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @be64_to_cpu(i8* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %14, i32 0, i32 0
  store i8* null, i8** %56, align 8
  br label %57

57:                                               ; preds = %55, %41
  %58 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %14, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %61 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  %63 = load %struct.qc_dqblk*, %struct.qc_dqblk** %11, align 8
  %64 = icmp ne %struct.qc_dqblk* %63, null
  br i1 %64, label %65, label %135

65:                                               ; preds = %57
  %66 = load %struct.qc_dqblk*, %struct.qc_dqblk** %11, align 8
  %67 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @QC_SPC_SOFT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %65
  %73 = load %struct.qc_dqblk*, %struct.qc_dqblk** %11, align 8
  %74 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %77 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %75, %79
  %81 = call i8* @cpu_to_be64(i32 %80)
  %82 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %14, i32 0, i32 2
  store i8* %81, i8** %82, align 8
  %83 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %14, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %86 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i8* %84, i8** %87, align 8
  br label %88

88:                                               ; preds = %72, %65
  %89 = load %struct.qc_dqblk*, %struct.qc_dqblk** %11, align 8
  %90 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @QC_SPC_HARD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %88
  %96 = load %struct.qc_dqblk*, %struct.qc_dqblk** %11, align 8
  %97 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %100 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %98, %102
  %104 = call i8* @cpu_to_be64(i32 %103)
  %105 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %14, i32 0, i32 1
  store i8* %104, i8** %105, align 8
  %106 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %14, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %109 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i8* %107, i8** %110, align 8
  br label %111

111:                                              ; preds = %95, %88
  %112 = load %struct.qc_dqblk*, %struct.qc_dqblk** %11, align 8
  %113 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @QC_SPACE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %111
  %119 = load %struct.qc_dqblk*, %struct.qc_dqblk** %11, align 8
  %120 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %123 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %121, %125
  %127 = call i8* @cpu_to_be64(i32 %126)
  %128 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %14, i32 0, i32 0
  store i8* %127, i8** %128, align 8
  %129 = getelementptr inbounds %struct.gfs2_quota, %struct.gfs2_quota* %14, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %132 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i8* %130, i8** %133, align 8
  br label %134

134:                                              ; preds = %118, %111
  br label %135

135:                                              ; preds = %134, %57
  %136 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @gfs2_write_disk_quota(%struct.gfs2_inode* %136, %struct.gfs2_quota* %14, i32 %137)
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %15, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %167, label %141

141:                                              ; preds = %135
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = add i64 %143, 24
  store i64 %144, i64* %16, align 8
  %145 = load i64, i64* %16, align 8
  %146 = load %struct.inode*, %struct.inode** %12, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp sgt i64 %145, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %141
  %151 = load %struct.inode*, %struct.inode** %12, align 8
  %152 = load i64, i64* %16, align 8
  %153 = call i32 @i_size_write(%struct.inode* %151, i64 %152)
  br label %154

154:                                              ; preds = %150, %141
  %155 = load %struct.inode*, %struct.inode** %12, align 8
  %156 = call i32 @current_time(%struct.inode* %155)
  %157 = load %struct.inode*, %struct.inode** %12, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  %159 = load %struct.inode*, %struct.inode** %12, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 2
  store i32 %156, i32* %160, align 4
  %161 = load %struct.inode*, %struct.inode** %12, align 8
  %162 = call i32 @mark_inode_dirty(%struct.inode* %161)
  %163 = load i32, i32* @QDF_REFRESH, align 4
  %164 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %10, align 8
  %165 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %164, i32 0, i32 0
  %166 = call i32 @set_bit(i32 %163, i32* %165)
  br label %167

167:                                              ; preds = %154, %135
  %168 = load i32, i32* %15, align 4
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %167, %39, %29
  %170 = load i32, i32* %6, align 4
  ret i32 %170
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_unstuff_dinode(%struct.gfs2_inode*, i32*) #1

declare dso_local i32 @memset(%struct.gfs2_quota*, i32, i32) #1

declare dso_local i32 @gfs2_internal_read(%struct.gfs2_inode*, i8*, i32*, i32) #1

declare dso_local i32 @be64_add_cpu(i8**, i64) #1

declare dso_local i64 @be64_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @gfs2_write_disk_quota(%struct.gfs2_inode*, %struct.gfs2_quota*, i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
