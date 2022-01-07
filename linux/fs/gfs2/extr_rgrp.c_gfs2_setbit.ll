; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_setbit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_setbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rbm = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_bitmap = type { i32, i32, i8, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i64 }

@GFS2_NBBY = common dso_local global i32 0, align 4
@GFS2_BIT_SIZE = common dso_local global i32 0, align 4
@GFS2_BIT_MASK = common dso_local global i8 0, align 1
@valid_change = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"buf_blk = 0x%x old_state=%d, new_state=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"rgrp=0x%llx bi_start=0x%x biblk: 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"bi_offset=0x%x bi_bytes=0x%x block=0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_rbm*, i32, i8)* @gfs2_setbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_setbit(%struct.gfs2_rbm* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.gfs2_rbm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.gfs2_bitmap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_rbm* %0, %struct.gfs2_rbm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %15 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %16 = call %struct.gfs2_bitmap* @rbm_bi(%struct.gfs2_rbm* %15)
  store %struct.gfs2_bitmap* %16, %struct.gfs2_bitmap** %11, align 8
  %17 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %18 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %21 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFS2_NBBY, align 4
  %24 = srem i32 %22, %23
  %25 = load i32, i32* @GFS2_BIT_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %13, align 4
  %27 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %28 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %27, i32 0, i32 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %33 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  %37 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %38 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @GFS2_NBBY, align 4
  %41 = sdiv i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %36, i64 %42
  store i8* %43, i8** %7, align 8
  %44 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %45 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %44, i32 0, i32 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %50 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  %54 = load i32, i32* %12, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = icmp uge i8* %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load i32, i32* %13, align 4
  %66 = ashr i32 %64, %65
  %67 = load i8, i8* @GFS2_BIT_MASK, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %66, %68
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %10, align 1
  %71 = load i32*, i32** @valid_change, align 8
  %72 = load i8, i8* %6, align 1
  %73 = zext i8 %72 to i32
  %74 = mul nsw i32 %73, 4
  %75 = load i8, i8* %10, align 1
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %74, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %71, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %133

86:                                               ; preds = %3
  %87 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %88 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %90, align 8
  store %struct.gfs2_sbd* %91, %struct.gfs2_sbd** %14, align 8
  %92 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  %93 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %94 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = load i8, i8* %10, align 1
  %98 = load i8, i8* %6, align 1
  %99 = zext i8 %98 to i64
  %100 = call i32 @fs_warn(%struct.gfs2_sbd* %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %96, i8 zeroext %97, i64 %99)
  %101 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  %102 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %103 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %108 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %107, i32 0, i32 2
  %109 = load i8, i8* %108, align 8
  %110 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %111 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %110, i32 0, i32 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @fs_warn(%struct.gfs2_sbd* %101, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %106, i8 zeroext %109, i64 %114)
  %116 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  %117 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %118 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %122 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = trunc i32 %123 to i8
  %125 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %126 = call i64 @gfs2_rbm_to_block(%struct.gfs2_rbm* %125)
  %127 = call i32 @fs_warn(%struct.gfs2_sbd* %116, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %120, i8 zeroext %124, i64 %126)
  %128 = call i32 (...) @dump_stack()
  %129 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %130 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = call i32 @gfs2_consist_rgrpd(%struct.TYPE_4__* %131)
  br label %190

133:                                              ; preds = %3
  %134 = load i8, i8* %10, align 1
  %135 = zext i8 %134 to i32
  %136 = load i8, i8* %6, align 1
  %137 = zext i8 %136 to i32
  %138 = xor i32 %135, %137
  %139 = load i32, i32* %13, align 4
  %140 = shl i32 %138, %139
  %141 = load i8*, i8** %7, align 8
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = xor i32 %143, %140
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %141, align 1
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %190

148:                                              ; preds = %133
  %149 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %150 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %149, i32 0, i32 3
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %190

153:                                              ; preds = %148
  %154 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %155 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %154, i32 0, i32 3
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %158 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %156, i64 %160
  %162 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %163 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @GFS2_NBBY, align 4
  %166 = sdiv i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %161, i64 %167
  store i8* %168, i8** %8, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = load i32, i32* %13, align 4
  %173 = ashr i32 %171, %172
  %174 = load i8, i8* @GFS2_BIT_MASK, align 1
  %175 = zext i8 %174 to i32
  %176 = and i32 %173, %175
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %10, align 1
  %178 = load i8, i8* %10, align 1
  %179 = zext i8 %178 to i32
  %180 = load i8, i8* %6, align 1
  %181 = zext i8 %180 to i32
  %182 = xor i32 %179, %181
  %183 = load i32, i32* %13, align 4
  %184 = shl i32 %182, %183
  %185 = load i8*, i8** %8, align 8
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = xor i32 %187, %184
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %185, align 1
  br label %190

190:                                              ; preds = %86, %153, %148, %133
  ret void
}

declare dso_local %struct.gfs2_bitmap* @rbm_bi(%struct.gfs2_rbm*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, i64, i8 zeroext, i64) #1

declare dso_local i64 @gfs2_rbm_to_block(%struct.gfs2_rbm*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @gfs2_consist_rgrpd(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
