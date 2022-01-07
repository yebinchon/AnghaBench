; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_compute_bitstructs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_compute_bitstructs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i32, i32, i32, %struct.gfs2_bitmap*, %struct.gfs2_sbd* }
%struct.gfs2_bitmap = type { i32, i32, i32, i32, i64 }
%struct.gfs2_sbd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFS2_NBBY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"start=%u len=%u offset=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_rgrpd*)* @compute_bitstructs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_bitstructs(%struct.gfs2_rgrpd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_bitmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %3, align 8
  %10 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %11 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %10, i32 0, i32 4
  %12 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  store %struct.gfs2_sbd* %12, %struct.gfs2_sbd** %4, align 8
  %13 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %14 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %199

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GFP_NOFS, align 4
  %24 = call %struct.gfs2_bitmap* @kcalloc(i32 %22, i32 24, i32 %23)
  %25 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %26 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %25, i32 0, i32 3
  store %struct.gfs2_bitmap* %24, %struct.gfs2_bitmap** %26, align 8
  %27 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %28 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %27, i32 0, i32 3
  %29 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %28, align 8
  %30 = icmp ne %struct.gfs2_bitmap* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %199

34:                                               ; preds = %21
  %35 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %36 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %145, %34
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %148

42:                                               ; preds = %38
  %43 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %44 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %43, i32 0, i32 3
  %45 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %45, i64 %47
  store %struct.gfs2_bitmap* %48, %struct.gfs2_bitmap** %5, align 8
  %49 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %50 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %67

53:                                               ; preds = %42
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %8, align 4
  %55 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %56 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %55, i32 0, i32 0
  store i32 4, i32* %56, align 8
  %57 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %58 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %61 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @GFS2_NBBY, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %66 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  br label %141

67:                                               ; preds = %42
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %67
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %72 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 %75, 4
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %79 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %78, i32 0, i32 0
  store i32 4, i32* %79, align 8
  %80 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %81 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %84 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @GFS2_NBBY, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %89 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  br label %140

90:                                               ; preds = %67
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %8, align 4
  %97 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %98 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %97, i32 0, i32 0
  store i32 4, i32* %98, align 8
  %99 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %100 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %105 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %108 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @GFS2_NBBY, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %113 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  br label %139

114:                                              ; preds = %90
  %115 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %116 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = sub i64 %119, 4
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %8, align 4
  %122 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %123 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %122, i32 0, i32 0
  store i32 4, i32* %123, align 8
  %124 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %125 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %7, align 4
  %128 = sub nsw i32 %126, %127
  %129 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %130 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %133 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @GFS2_NBBY, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %138 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %114, %95
  br label %140

140:                                              ; preds = %139, %70
  br label %141

141:                                              ; preds = %140, %53
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %7, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %38

148:                                              ; preds = %38
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %153 = call i64 @gfs2_consist_rgrpd(%struct.gfs2_rgrpd* %152)
  %154 = load i32, i32* @EIO, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  br label %199

156:                                              ; preds = %148
  %157 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %158 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %157, i32 0, i32 3
  %159 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %159, i64 %162
  store %struct.gfs2_bitmap* %163, %struct.gfs2_bitmap** %5, align 8
  %164 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %165 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %168 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %166, %169
  %171 = load i32, i32* @GFS2_NBBY, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %174 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %172, %175
  br i1 %176, label %177, label %198

177:                                              ; preds = %156
  %178 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %179 = call i64 @gfs2_consist_rgrpd(%struct.gfs2_rgrpd* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %177
  %182 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %183 = call i32 @gfs2_rindex_print(%struct.gfs2_rgrpd* %182)
  %184 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %185 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %186 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %189 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %5, align 8
  %192 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @fs_err(%struct.gfs2_sbd* %184, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %187, i32 %190, i32 %193)
  br label %195

195:                                              ; preds = %181, %177
  %196 = load i32, i32* @EIO, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %2, align 4
  br label %199

198:                                              ; preds = %156
  store i32 0, i32* %2, align 4
  br label %199

199:                                              ; preds = %198, %195, %151, %31, %18
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.gfs2_bitmap* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @gfs2_consist_rgrpd(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @gfs2_rindex_print(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
