; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_journal.c_jbd2_seq_info_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_journal.c_jbd2_seq_info_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.jbd2_stats_proc_session* }
%struct.jbd2_stats_proc_session = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [56 x i8] c"%lu transactions (%lu requested), each up to %u blocks\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"average: \0A  %ums waiting for transaction\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"  %ums request delay\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"  %ums running transaction\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"  %ums transaction was being locked\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"  %ums flushing data (in ordered mode)\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"  %ums logging transaction\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"  %lluus average transaction commit time\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"  %lu handles per transaction\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"  %lu blocks per transaction\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"  %lu logged blocks per transaction\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @jbd2_seq_info_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbd2_seq_info_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.jbd2_stats_proc_session*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %8, align 8
  store %struct.jbd2_stats_proc_session* %9, %struct.jbd2_stats_proc_session** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %12 = icmp ne i8* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %190

14:                                               ; preds = %2
  %15 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %16 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %17 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %22 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %27 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %25, i32 %30)
  %32 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %33 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %190

39:                                               ; preds = %14
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %42 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %48 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %46, %51
  %53 = call i32 @jiffies_to_msecs(i32 %52)
  %54 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %57 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %39
  br label %77

63:                                               ; preds = %39
  %64 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %65 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %71 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %69, %74
  %76 = call i32 @jiffies_to_msecs(i32 %75)
  br label %77

77:                                               ; preds = %63, %62
  %78 = phi i32 [ 0, %62 ], [ %76, %63 ]
  %79 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %81 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %82 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %88 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %86, %91
  %93 = call i32 @jiffies_to_msecs(i32 %92)
  %94 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %96 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %97 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %103 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %101, %106
  %108 = call i32 @jiffies_to_msecs(i32 %107)
  %109 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  %110 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %111 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %112 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %118 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sdiv i32 %116, %121
  %123 = call i32 @jiffies_to_msecs(i32 %122)
  %124 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  %125 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %126 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %127 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %133 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %131, %136
  %138 = call i32 @jiffies_to_msecs(i32 %137)
  %139 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  %140 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %141 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %142 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @div_u64(i32 %145, i32 1000)
  %147 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %140, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %146)
  %148 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %149 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %150 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %149, i32 0, i32 0
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %156 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sdiv i32 %154, %159
  %161 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %148, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %160)
  %162 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %163 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %164 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %163, i32 0, i32 0
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %170 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %169, i32 0, i32 0
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = sdiv i32 %168, %173
  %175 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %174)
  %176 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %177 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %178 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %177, i32 0, i32 0
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.jbd2_stats_proc_session*, %struct.jbd2_stats_proc_session** %6, align 8
  %184 = getelementptr inbounds %struct.jbd2_stats_proc_session, %struct.jbd2_stats_proc_session* %183, i32 0, i32 0
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = sdiv i32 %182, %187
  %189 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %176, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %188)
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %77, %38, %13
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
