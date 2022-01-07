; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_show_client_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_show_client_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.p9_client = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, {}* }

@.str = private unnamed_addr constant [10 x i8] c",msize=%u\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c",trans=%s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c",noextend\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c",version=9p2000.u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_show_client_options(%struct.seq_file* %0, %struct.p9_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.p9_client*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.p9_client* %1, %struct.p9_client** %5, align 8
  %6 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %7 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 8192
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %13 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %19 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %25 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %34 [
    i32 128, label %27
    i32 129, label %30
    i32 130, label %33
  ]

27:                                               ; preds = %16
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = call i32 @seq_puts(%struct.seq_file* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %34

30:                                               ; preds = %16
  %31 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %32 = call i32 @seq_puts(%struct.seq_file* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %34

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %16, %33, %30, %27
  %35 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %36 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = bitcast {}** %38 to i32 (%struct.seq_file*, %struct.p9_client*)**
  %40 = load i32 (%struct.seq_file*, %struct.p9_client*)*, i32 (%struct.seq_file*, %struct.p9_client*)** %39, align 8
  %41 = icmp ne i32 (%struct.seq_file*, %struct.p9_client*)* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %44 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = bitcast {}** %46 to i32 (%struct.seq_file*, %struct.p9_client*)**
  %48 = load i32 (%struct.seq_file*, %struct.p9_client*)*, i32 (%struct.seq_file*, %struct.p9_client*)** %47, align 8
  %49 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %50 = load %struct.p9_client*, %struct.p9_client** %5, align 8
  %51 = call i32 %48(%struct.seq_file* %49, %struct.p9_client* %50)
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
