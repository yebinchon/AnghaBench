; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_jitdump.c_jit_repipe_debug_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_jitdump.c_jit_repipe_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_buf_desc = type { i32, i8* }
%union.jr_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jit_buf_desc*, %union.jr_entry*)* @jit_repipe_debug_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jit_repipe_debug_info(%struct.jit_buf_desc* %0, %union.jr_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jit_buf_desc*, align 8
  %5 = alloca %union.jr_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.jit_buf_desc* %0, %struct.jit_buf_desc** %4, align 8
  store %union.jr_entry* %1, %union.jr_entry** %5, align 8
  %8 = load %struct.jit_buf_desc*, %struct.jit_buf_desc** %4, align 8
  %9 = icmp ne %struct.jit_buf_desc* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %union.jr_entry*, %union.jr_entry** %5, align 8
  %12 = icmp ne %union.jr_entry* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  store i32 -1, i32* %3, align 4
  br label %42

14:                                               ; preds = %10
  %15 = load %union.jr_entry*, %union.jr_entry** %5, align 8
  %16 = bitcast %union.jr_entry* %15 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i8* @malloc(i64 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %42

26:                                               ; preds = %14
  %27 = load i8*, i8** %6, align 8
  %28 = load %union.jr_entry*, %union.jr_entry** %5, align 8
  %29 = bitcast %union.jr_entry* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @memcpy(i8* %27, i32* %30, i64 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.jit_buf_desc*, %struct.jit_buf_desc** %4, align 8
  %35 = getelementptr inbounds %struct.jit_buf_desc, %struct.jit_buf_desc* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %union.jr_entry*, %union.jr_entry** %5, align 8
  %37 = bitcast %union.jr_entry* %36 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.jit_buf_desc*, %struct.jit_buf_desc** %4, align 8
  %41 = getelementptr inbounds %struct.jit_buf_desc, %struct.jit_buf_desc* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %26, %25, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
