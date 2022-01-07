; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_scnprintf_cpu_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_scnprintf_cpu_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"[%d %d %s %s]\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[NULL]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.cpu_key*)* @scnprintf_cpu_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scnprintf_cpu_key(i8* %0, i64 %1, %struct.cpu_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cpu_key*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.cpu_key* %2, %struct.cpu_key** %7, align 8
  %8 = load %struct.cpu_key*, %struct.cpu_key** %7, align 8
  %9 = icmp ne %struct.cpu_key* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.cpu_key*, %struct.cpu_key** %7, align 8
  %14 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cpu_key*, %struct.cpu_key** %7, align 8
  %18 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cpu_key*, %struct.cpu_key** %7, align 8
  %22 = call i32 @reiserfs_cpu_offset(%struct.cpu_key* %21)
  %23 = load %struct.cpu_key*, %struct.cpu_key** %7, align 8
  %24 = call i32 @cpu_type(%struct.cpu_key* %23)
  %25 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %11, i64 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i32 %22, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %27, i64 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %10
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @reiserfs_cpu_offset(%struct.cpu_key*) #1

declare dso_local i32 @cpu_type(%struct.cpu_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
