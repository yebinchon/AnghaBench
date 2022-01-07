; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.gfs2_quota_data** }
%struct.gfs2_quota_data = type { i64, i64, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.gfs2_alloc_parms = type { i64, i64, i64 }
%struct.gfs2_sbd = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@UINT_MAX = common dso_local global i64 0, align 8
@GIF_QD_LOCKED = common dso_local global i32 0, align 4
@GFS2_QUOTA_ON = common dso_local global i64 0, align 8
@qd_lock = common dso_local global i32 0, align 4
@QDF_QMSG_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"exceeded\00", align 1
@QUOTA_NL_BHARDWARN = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@gt_quota_warn_period = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@QUOTA_NL_BSOFTWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"warning\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_quota_check(%struct.gfs2_inode* %0, i32 %1, i32 %2, %struct.gfs2_alloc_parms* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfs2_alloc_parms*, align 8
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca %struct.gfs2_quota_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.gfs2_alloc_parms* %3, %struct.gfs2_alloc_parms** %9, align 8
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %18 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %17, i32 0, i32 2
  %19 = call %struct.gfs2_sbd* @GFS2_SB(i32* %18)
  store %struct.gfs2_sbd* %19, %struct.gfs2_sbd** %10, align 8
  store i32 0, i32* %16, align 4
  %20 = load i64, i64* @UINT_MAX, align 8
  %21 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %9, align 8
  %22 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* @GIF_QD_LOCKED, align 4
  %24 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %25 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %24, i32 0, i32 1
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %201

29:                                               ; preds = %4
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %31 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @GFS2_QUOTA_ON, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %201

37:                                               ; preds = %29
  store i64 0, i64* %15, align 8
  br label %38

38:                                               ; preds = %196, %37
  %39 = load i64, i64* %15, align 8
  %40 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %41 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %39, %44
  br i1 %45, label %46, label %199

46:                                               ; preds = %38
  %47 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %48 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %50, align 8
  %52 = load i64, i64* %15, align 8
  %53 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %51, i64 %52
  %54 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %53, align 8
  store %struct.gfs2_quota_data* %54, %struct.gfs2_quota_data** %11, align 8
  %55 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %11, align 8
  %56 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @make_kqid_uid(i32 %58)
  %60 = call i64 @qid_eq(i32 %57, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %46
  %63 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %11, align 8
  %64 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @make_kqid_gid(i32 %66)
  %68 = call i64 @qid_eq(i32 %65, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %196

71:                                               ; preds = %62, %46
  %72 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %11, align 8
  %73 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @be64_to_cpu(i32 %75)
  store i64 %76, i64* %13, align 8
  %77 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %11, align 8
  %78 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @be64_to_cpu(i32 %80)
  store i64 %81, i64* %14, align 8
  %82 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %11, align 8
  %83 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @be64_to_cpu(i32 %85)
  store i64 %86, i64* %12, align 8
  %87 = call i32 @spin_lock(i32* @qd_lock)
  %88 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %11, align 8
  %89 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %12, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %12, align 8
  %93 = call i32 @spin_unlock(i32* @qd_lock)
  %94 = load i64, i64* %14, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %71
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %12, align 8
  %99 = sub nsw i64 %97, %98
  %100 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %9, align 8
  %101 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %99, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* %12, align 8
  %107 = sub nsw i64 %105, %106
  %108 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %9, align 8
  %109 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %104, %96, %71
  %111 = load i64, i64* %14, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %157

113:                                              ; preds = %110
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* %12, align 8
  %116 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %9, align 8
  %117 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %115, %118
  %120 = icmp slt i64 %114, %119
  br i1 %120, label %121, label %157

121:                                              ; preds = %113
  %122 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %9, align 8
  %123 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %9, align 8
  %128 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.gfs2_alloc_parms*, %struct.gfs2_alloc_parms** %9, align 8
  %131 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp sgt i64 %129, %132
  br i1 %133, label %134, label %156

134:                                              ; preds = %126, %121
  %135 = load i32, i32* @QDF_QMSG_QUIET, align 4
  %136 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %11, align 8
  %137 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %136, i32 0, i32 3
  %138 = call i32 @test_and_set_bit(i32 %135, i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %153, label %140

140:                                              ; preds = %134
  %141 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %11, align 8
  %142 = call i32 @print_message(%struct.gfs2_quota_data* %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %143 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %11, align 8
  %144 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %147 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %146, i32 0, i32 0
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @QUOTA_NL_BHARDWARN, align 4
  %152 = call i32 @quota_send_warning(i32 %145, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %140, %134
  %154 = load i32, i32* @EDQUOT, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %16, align 4
  br label %199

156:                                              ; preds = %126
  br label %195

157:                                              ; preds = %113, %110
  %158 = load i64, i64* %13, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %194

160:                                              ; preds = %157
  %161 = load i64, i64* %13, align 8
  %162 = load i64, i64* %12, align 8
  %163 = icmp slt i64 %161, %162
  br i1 %163, label %164, label %194

164:                                              ; preds = %160
  %165 = load i64, i64* @jiffies, align 8
  %166 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %11, align 8
  %167 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %170 = load i32, i32* @gt_quota_warn_period, align 4
  %171 = call i32 @gfs2_tune_get(%struct.gfs2_sbd* %169, i32 %170)
  %172 = load i32, i32* @HZ, align 4
  %173 = mul nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %168, %174
  %176 = call i64 @time_after_eq(i64 %165, i64 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %194

178:                                              ; preds = %164
  %179 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %11, align 8
  %180 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %183 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %182, i32 0, i32 0
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @QUOTA_NL_BSOFTWARN, align 4
  %188 = call i32 @quota_send_warning(i32 %181, i32 %186, i32 %187)
  %189 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %11, align 8
  %190 = call i32 @print_message(%struct.gfs2_quota_data* %189, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %190, i32* %16, align 4
  %191 = load i64, i64* @jiffies, align 8
  %192 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %11, align 8
  %193 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %192, i32 0, i32 1
  store i64 %191, i64* %193, align 8
  br label %194

194:                                              ; preds = %178, %164, %160, %157
  br label %195

195:                                              ; preds = %194, %156
  br label %196

196:                                              ; preds = %195, %70
  %197 = load i64, i64* %15, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %15, align 8
  br label %38

199:                                              ; preds = %153, %38
  %200 = load i32, i32* %16, align 4
  store i32 %200, i32* %5, align 4
  br label %201

201:                                              ; preds = %199, %36, %28
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @qid_eq(i32, i32) #1

declare dso_local i32 @make_kqid_uid(i32) #1

declare dso_local i32 @make_kqid_gid(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @print_message(%struct.gfs2_quota_data*, i8*) #1

declare dso_local i32 @quota_send_warning(i32, i32, i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @gfs2_tune_get(%struct.gfs2_sbd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
