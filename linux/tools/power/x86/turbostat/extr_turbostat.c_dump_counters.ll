; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_counters.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.msr_counter*, %struct.msr_counter*, %struct.msr_counter* }
%struct.msr_counter = type { i32, %struct.msr_counter* }
%struct.thread_data = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.core_data = type { i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.pkg_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@outp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"t %p, c %p, p %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"CPU: %d flags 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"TSC: %016llX\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"aperf: %016llX\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"mperf: %016llX\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"c1: %016llX\0A\00", align 1
@BIC_IRQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"IRQ: %lld\0A\00", align 1
@BIC_SMI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"SMI: %d\0A\00", align 1
@sys = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"tADDED [%d] msr0x%x: %08llX\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"core: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"c3: %016llX\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"c6: %016llX\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"c7: %016llX\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"DTS: %dC\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Joules: %0X\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"cADDED [%d] msr0x%x: %08llX\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"mc6_us: %016llX\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"package: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Weighted cores: %016llX\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Any cores: %016llX\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Any GFX: %016llX\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"CPU + GFX: %016llX\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"pc2: %016llX\0A\00", align 1
@BIC_Pkgpc3 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [14 x i8] c"pc3: %016llX\0A\00", align 1
@BIC_Pkgpc6 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [14 x i8] c"pc6: %016llX\0A\00", align 1
@BIC_Pkgpc7 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [14 x i8] c"pc7: %016llX\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"pc8: %016llX\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"pc9: %016llX\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"pc10: %016llX\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"cpu_lpi: %016llX\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"sys_lpi: %016llX\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Joules PKG: %0X\0A\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Joules COR: %0X\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"Joules GFX: %0X\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"Joules RAM: %0X\0A\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"Throttle PKG: %0X\0A\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"Throttle RAM: %0X\0A\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"PTM: %dC\0A\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"pADDED [%d] msr0x%x: %08llX\0A\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dump_counters(%struct.thread_data* %0, %struct.core_data* %1, %struct.pkg_data* %2) #0 {
  %4 = alloca %struct.thread_data*, align 8
  %5 = alloca %struct.core_data*, align 8
  %6 = alloca %struct.pkg_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msr_counter*, align 8
  store %struct.thread_data* %0, %struct.thread_data** %4, align 8
  store %struct.core_data* %1, %struct.core_data** %5, align 8
  store %struct.pkg_data* %2, %struct.pkg_data** %6, align 8
  %9 = load i32, i32* @outp, align 4
  %10 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %11 = load %struct.core_data*, %struct.core_data** %5, align 8
  %12 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %13 = call i64 (i32, i8*, ...) @sprintf(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.thread_data* %10, %struct.core_data* %11, %struct.pkg_data* %12)
  %14 = load i32, i32* @outp, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* @outp, align 4
  %18 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %19 = icmp ne %struct.thread_data* %18, null
  br i1 %19, label %20, label %126

20:                                               ; preds = %3
  %21 = load i32, i32* @outp, align 4
  %22 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %23 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %26 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 (i32, i8*, ...) @sprintf(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32, i32* @outp, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* @outp, align 4
  %33 = load i32, i32* @outp, align 4
  %34 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %35 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = call i64 (i32, i8*, ...) @sprintf(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @outp, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* @outp, align 4
  %42 = load i32, i32* @outp, align 4
  %43 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %44 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = call i64 (i32, i8*, ...) @sprintf(i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @outp, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* @outp, align 4
  %51 = load i32, i32* @outp, align 4
  %52 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %53 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i64 (i32, i8*, ...) @sprintf(i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @outp, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* @outp, align 4
  %60 = load i32, i32* @outp, align 4
  %61 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %62 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i64 (i32, i8*, ...) @sprintf(i32 %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @outp, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* @outp, align 4
  %69 = load i32, i32* @BIC_IRQ, align 4
  %70 = call i64 @DO_BIC(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %20
  %73 = load i32, i32* @outp, align 4
  %74 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %75 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i64 (i32, i8*, ...) @sprintf(i32 %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @outp, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* @outp, align 4
  br label %82

82:                                               ; preds = %72, %20
  %83 = load i32, i32* @BIC_SMI, align 4
  %84 = call i64 @DO_BIC(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load i32, i32* @outp, align 4
  %88 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %89 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i64 (i32, i8*, ...) @sprintf(i32 %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @outp, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* @outp, align 4
  br label %96

96:                                               ; preds = %86, %82
  store i32 0, i32* %7, align 4
  %97 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 2), align 8
  store %struct.msr_counter* %97, %struct.msr_counter** %8, align 8
  br label %98

98:                                               ; preds = %119, %96
  %99 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %100 = icmp ne %struct.msr_counter* %99, null
  br i1 %100, label %101, label %125

101:                                              ; preds = %98
  %102 = load i32, i32* @outp, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %105 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %108 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i64 (i32, i8*, ...) @sprintf(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %103, i32 %106, i32 %113)
  %115 = load i32, i32* @outp, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* @outp, align 4
  br label %119

119:                                              ; preds = %101
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  %122 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %123 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %122, i32 0, i32 1
  %124 = load %struct.msr_counter*, %struct.msr_counter** %123, align 8
  store %struct.msr_counter* %124, %struct.msr_counter** %8, align 8
  br label %98

125:                                              ; preds = %98
  br label %126

126:                                              ; preds = %125, %3
  %127 = load %struct.core_data*, %struct.core_data** %5, align 8
  %128 = icmp ne %struct.core_data* %127, null
  br i1 %128, label %129, label %222

129:                                              ; preds = %126
  %130 = load i32, i32* @outp, align 4
  %131 = load %struct.core_data*, %struct.core_data** %5, align 8
  %132 = getelementptr inbounds %struct.core_data, %struct.core_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i64 (i32, i8*, ...) @sprintf(i32 %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @outp, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* @outp, align 4
  %139 = load i32, i32* @outp, align 4
  %140 = load %struct.core_data*, %struct.core_data** %5, align 8
  %141 = getelementptr inbounds %struct.core_data, %struct.core_data* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 8
  %143 = call i64 (i32, i8*, ...) @sprintf(i32 %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @outp, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* @outp, align 4
  %148 = load i32, i32* @outp, align 4
  %149 = load %struct.core_data*, %struct.core_data** %5, align 8
  %150 = getelementptr inbounds %struct.core_data, %struct.core_data* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = call i64 (i32, i8*, ...) @sprintf(i32 %148, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @outp, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* @outp, align 4
  %157 = load i32, i32* @outp, align 4
  %158 = load %struct.core_data*, %struct.core_data** %5, align 8
  %159 = getelementptr inbounds %struct.core_data, %struct.core_data* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = call i64 (i32, i8*, ...) @sprintf(i32 %157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* @outp, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* @outp, align 4
  %166 = load i32, i32* @outp, align 4
  %167 = load %struct.core_data*, %struct.core_data** %5, align 8
  %168 = getelementptr inbounds %struct.core_data, %struct.core_data* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i64 (i32, i8*, ...) @sprintf(i32 %166, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @outp, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %170
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* @outp, align 4
  %175 = load i32, i32* @outp, align 4
  %176 = load %struct.core_data*, %struct.core_data** %5, align 8
  %177 = getelementptr inbounds %struct.core_data, %struct.core_data* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i64 (i32, i8*, ...) @sprintf(i32 %175, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* @outp, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* @outp, align 4
  store i32 0, i32* %7, align 4
  %184 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 1), align 8
  store %struct.msr_counter* %184, %struct.msr_counter** %8, align 8
  br label %185

185:                                              ; preds = %206, %129
  %186 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %187 = icmp ne %struct.msr_counter* %186, null
  br i1 %187, label %188, label %212

188:                                              ; preds = %185
  %189 = load i32, i32* @outp, align 4
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %192 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.core_data*, %struct.core_data** %5, align 8
  %195 = getelementptr inbounds %struct.core_data, %struct.core_data* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i64 (i32, i8*, ...) @sprintf(i32 %189, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %190, i32 %193, i32 %200)
  %202 = load i32, i32* @outp, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* @outp, align 4
  br label %206

206:                                              ; preds = %188
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %7, align 4
  %209 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %210 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %209, i32 0, i32 1
  %211 = load %struct.msr_counter*, %struct.msr_counter** %210, align 8
  store %struct.msr_counter* %211, %struct.msr_counter** %8, align 8
  br label %185

212:                                              ; preds = %185
  %213 = load i32, i32* @outp, align 4
  %214 = load %struct.core_data*, %struct.core_data** %5, align 8
  %215 = getelementptr inbounds %struct.core_data, %struct.core_data* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = call i64 (i32, i8*, ...) @sprintf(i32 %213, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* @outp, align 4
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %219, %217
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* @outp, align 4
  br label %222

222:                                              ; preds = %212, %126
  %223 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %224 = icmp ne %struct.pkg_data* %223, null
  br i1 %224, label %225, label %459

225:                                              ; preds = %222
  %226 = load i32, i32* @outp, align 4
  %227 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %228 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i64 (i32, i8*, ...) @sprintf(i32 %226, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* @outp, align 4
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %232, %230
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* @outp, align 4
  %235 = load i32, i32* @outp, align 4
  %236 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %237 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %236, i32 0, i32 21
  %238 = load i32, i32* %237, align 8
  %239 = call i64 (i32, i8*, ...) @sprintf(i32 %235, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* @outp, align 4
  %241 = sext i32 %240 to i64
  %242 = add nsw i64 %241, %239
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* @outp, align 4
  %244 = load i32, i32* @outp, align 4
  %245 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %246 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %245, i32 0, i32 20
  %247 = load i32, i32* %246, align 4
  %248 = call i64 (i32, i8*, ...) @sprintf(i32 %244, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %247)
  %249 = load i32, i32* @outp, align 4
  %250 = sext i32 %249 to i64
  %251 = add nsw i64 %250, %248
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* @outp, align 4
  %253 = load i32, i32* @outp, align 4
  %254 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %255 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %254, i32 0, i32 19
  %256 = load i32, i32* %255, align 8
  %257 = call i64 (i32, i8*, ...) @sprintf(i32 %253, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* @outp, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %257
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* @outp, align 4
  %262 = load i32, i32* @outp, align 4
  %263 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %264 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %263, i32 0, i32 18
  %265 = load i32, i32* %264, align 4
  %266 = call i64 (i32, i8*, ...) @sprintf(i32 %262, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %265)
  %267 = load i32, i32* @outp, align 4
  %268 = sext i32 %267 to i64
  %269 = add nsw i64 %268, %266
  %270 = trunc i64 %269 to i32
  store i32 %270, i32* @outp, align 4
  %271 = load i32, i32* @outp, align 4
  %272 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %273 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %272, i32 0, i32 17
  %274 = load i32, i32* %273, align 8
  %275 = call i64 (i32, i8*, ...) @sprintf(i32 %271, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 %274)
  %276 = load i32, i32* @outp, align 4
  %277 = sext i32 %276 to i64
  %278 = add nsw i64 %277, %275
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* @outp, align 4
  %280 = load i32, i32* @BIC_Pkgpc3, align 4
  %281 = call i64 @DO_BIC(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %293

283:                                              ; preds = %225
  %284 = load i32, i32* @outp, align 4
  %285 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %286 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %285, i32 0, i32 16
  %287 = load i32, i32* %286, align 4
  %288 = call i64 (i32, i8*, ...) @sprintf(i32 %284, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i32 %287)
  %289 = load i32, i32* @outp, align 4
  %290 = sext i32 %289 to i64
  %291 = add nsw i64 %290, %288
  %292 = trunc i64 %291 to i32
  store i32 %292, i32* @outp, align 4
  br label %293

293:                                              ; preds = %283, %225
  %294 = load i32, i32* @BIC_Pkgpc6, align 4
  %295 = call i64 @DO_BIC(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %307

297:                                              ; preds = %293
  %298 = load i32, i32* @outp, align 4
  %299 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %300 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %299, i32 0, i32 15
  %301 = load i32, i32* %300, align 8
  %302 = call i64 (i32, i8*, ...) @sprintf(i32 %298, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 %301)
  %303 = load i32, i32* @outp, align 4
  %304 = sext i32 %303 to i64
  %305 = add nsw i64 %304, %302
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* @outp, align 4
  br label %307

307:                                              ; preds = %297, %293
  %308 = load i32, i32* @BIC_Pkgpc7, align 4
  %309 = call i64 @DO_BIC(i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %321

311:                                              ; preds = %307
  %312 = load i32, i32* @outp, align 4
  %313 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %314 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %313, i32 0, i32 14
  %315 = load i32, i32* %314, align 4
  %316 = call i64 (i32, i8*, ...) @sprintf(i32 %312, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 %315)
  %317 = load i32, i32* @outp, align 4
  %318 = sext i32 %317 to i64
  %319 = add nsw i64 %318, %316
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* @outp, align 4
  br label %321

321:                                              ; preds = %311, %307
  %322 = load i32, i32* @outp, align 4
  %323 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %324 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %323, i32 0, i32 13
  %325 = load i32, i32* %324, align 8
  %326 = call i64 (i32, i8*, ...) @sprintf(i32 %322, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i32 %325)
  %327 = load i32, i32* @outp, align 4
  %328 = sext i32 %327 to i64
  %329 = add nsw i64 %328, %326
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* @outp, align 4
  %331 = load i32, i32* @outp, align 4
  %332 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %333 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %332, i32 0, i32 12
  %334 = load i32, i32* %333, align 4
  %335 = call i64 (i32, i8*, ...) @sprintf(i32 %331, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 %334)
  %336 = load i32, i32* @outp, align 4
  %337 = sext i32 %336 to i64
  %338 = add nsw i64 %337, %335
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* @outp, align 4
  %340 = load i32, i32* @outp, align 4
  %341 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %342 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %341, i32 0, i32 11
  %343 = load i32, i32* %342, align 8
  %344 = call i64 (i32, i8*, ...) @sprintf(i32 %340, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i32 %343)
  %345 = load i32, i32* @outp, align 4
  %346 = sext i32 %345 to i64
  %347 = add nsw i64 %346, %344
  %348 = trunc i64 %347 to i32
  store i32 %348, i32* @outp, align 4
  %349 = load i32, i32* @outp, align 4
  %350 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %351 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %350, i32 0, i32 10
  %352 = load i32, i32* %351, align 4
  %353 = call i64 (i32, i8*, ...) @sprintf(i32 %349, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 %352)
  %354 = load i32, i32* @outp, align 4
  %355 = sext i32 %354 to i64
  %356 = add nsw i64 %355, %353
  %357 = trunc i64 %356 to i32
  store i32 %357, i32* @outp, align 4
  %358 = load i32, i32* @outp, align 4
  %359 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %360 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %359, i32 0, i32 9
  %361 = load i32, i32* %360, align 8
  %362 = call i64 (i32, i8*, ...) @sprintf(i32 %358, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32 %361)
  %363 = load i32, i32* @outp, align 4
  %364 = sext i32 %363 to i64
  %365 = add nsw i64 %364, %362
  %366 = trunc i64 %365 to i32
  store i32 %366, i32* @outp, align 4
  %367 = load i32, i32* @outp, align 4
  %368 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %369 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = call i64 (i32, i8*, ...) @sprintf(i32 %367, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i32 %370)
  %372 = load i32, i32* @outp, align 4
  %373 = sext i32 %372 to i64
  %374 = add nsw i64 %373, %371
  %375 = trunc i64 %374 to i32
  store i32 %375, i32* @outp, align 4
  %376 = load i32, i32* @outp, align 4
  %377 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %378 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = call i64 (i32, i8*, ...) @sprintf(i32 %376, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i32 %379)
  %381 = load i32, i32* @outp, align 4
  %382 = sext i32 %381 to i64
  %383 = add nsw i64 %382, %380
  %384 = trunc i64 %383 to i32
  store i32 %384, i32* @outp, align 4
  %385 = load i32, i32* @outp, align 4
  %386 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %387 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 4
  %389 = call i64 (i32, i8*, ...) @sprintf(i32 %385, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i32 %388)
  %390 = load i32, i32* @outp, align 4
  %391 = sext i32 %390 to i64
  %392 = add nsw i64 %391, %389
  %393 = trunc i64 %392 to i32
  store i32 %393, i32* @outp, align 4
  %394 = load i32, i32* @outp, align 4
  %395 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %396 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %395, i32 0, i32 4
  %397 = load i32, i32* %396, align 8
  %398 = call i64 (i32, i8*, ...) @sprintf(i32 %394, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i32 %397)
  %399 = load i32, i32* @outp, align 4
  %400 = sext i32 %399 to i64
  %401 = add nsw i64 %400, %398
  %402 = trunc i64 %401 to i32
  store i32 %402, i32* @outp, align 4
  %403 = load i32, i32* @outp, align 4
  %404 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %405 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 4
  %407 = call i64 (i32, i8*, ...) @sprintf(i32 %403, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i32 %406)
  %408 = load i32, i32* @outp, align 4
  %409 = sext i32 %408 to i64
  %410 = add nsw i64 %409, %407
  %411 = trunc i64 %410 to i32
  store i32 %411, i32* @outp, align 4
  %412 = load i32, i32* @outp, align 4
  %413 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %414 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %413, i32 0, i32 6
  %415 = load i32, i32* %414, align 8
  %416 = call i64 (i32, i8*, ...) @sprintf(i32 %412, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0), i32 %415)
  %417 = load i32, i32* @outp, align 4
  %418 = sext i32 %417 to i64
  %419 = add nsw i64 %418, %416
  %420 = trunc i64 %419 to i32
  store i32 %420, i32* @outp, align 4
  %421 = load i32, i32* @outp, align 4
  %422 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %423 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %422, i32 0, i32 7
  %424 = load i32, i32* %423, align 4
  %425 = call i64 (i32, i8*, ...) @sprintf(i32 %421, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i32 %424)
  %426 = load i32, i32* @outp, align 4
  %427 = sext i32 %426 to i64
  %428 = add nsw i64 %427, %425
  %429 = trunc i64 %428 to i32
  store i32 %429, i32* @outp, align 4
  store i32 0, i32* %7, align 4
  %430 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys, i32 0, i32 0), align 8
  store %struct.msr_counter* %430, %struct.msr_counter** %8, align 8
  br label %431

431:                                              ; preds = %452, %321
  %432 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %433 = icmp ne %struct.msr_counter* %432, null
  br i1 %433, label %434, label %458

434:                                              ; preds = %431
  %435 = load i32, i32* @outp, align 4
  %436 = load i32, i32* %7, align 4
  %437 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %438 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %441 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %440, i32 0, i32 8
  %442 = load i32*, i32** %441, align 8
  %443 = load i32, i32* %7, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = call i64 (i32, i8*, ...) @sprintf(i32 %435, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0), i32 %436, i32 %439, i32 %446)
  %448 = load i32, i32* @outp, align 4
  %449 = sext i32 %448 to i64
  %450 = add nsw i64 %449, %447
  %451 = trunc i64 %450 to i32
  store i32 %451, i32* @outp, align 4
  br label %452

452:                                              ; preds = %434
  %453 = load i32, i32* %7, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %7, align 4
  %455 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %456 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %455, i32 0, i32 1
  %457 = load %struct.msr_counter*, %struct.msr_counter** %456, align 8
  store %struct.msr_counter* %457, %struct.msr_counter** %8, align 8
  br label %431

458:                                              ; preds = %431
  br label %459

459:                                              ; preds = %458, %222
  %460 = load i32, i32* @outp, align 4
  %461 = call i64 (i32, i8*, ...) @sprintf(i32 %460, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0))
  %462 = load i32, i32* @outp, align 4
  %463 = sext i32 %462 to i64
  %464 = add nsw i64 %463, %461
  %465 = trunc i64 %464 to i32
  store i32 %465, i32* @outp, align 4
  ret i32 0
}

declare dso_local i64 @sprintf(i32, i8*, ...) #1

declare dso_local i64 @DO_BIC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
