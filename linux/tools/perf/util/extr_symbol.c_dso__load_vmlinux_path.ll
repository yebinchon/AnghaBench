; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_dso__load_vmlinux_path.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_dso__load_vmlinux_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dso = type { i32 }
%struct.map = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Looking at the vmlinux_path (%d entries long)\0A\00", align 1
@vmlinux_path__nr_entries = common dso_local global i32 0, align 4
@vmlinux_path = common dso_local global i8** null, align 8
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dso__load_vmlinux_path(%struct.dso* %0, %struct.map* %1) #0 {
  %3 = alloca %struct.dso*, align 8
  %4 = alloca %struct.map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.dso* %0, %struct.dso** %3, align 8
  store %struct.map* %1, %struct.map** %4, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %8 = load i32, i32* @vmlinux_path__nr_entries, align 4
  %9 = add nsw i32 %8, 1
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %28, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @vmlinux_path__nr_entries, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load %struct.dso*, %struct.dso** %3, align 8
  %17 = load %struct.map*, %struct.map** %4, align 8
  %18 = load i8**, i8*** @vmlinux_path, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @dso__load_vmlinux(%struct.dso* %16, %struct.map* %17, i8* %22, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %52

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %11

31:                                               ; preds = %11
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load %struct.dso*, %struct.dso** %3, align 8
  %36 = call i8* @dso__build_id_filename(%struct.dso* %35, i32* null, i32 0, i32 0)
  store i8* %36, i8** %7, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.dso*, %struct.dso** %3, align 8
  %42 = load %struct.map*, %struct.map** %4, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @dso__load_vmlinux(%struct.dso* %41, %struct.map* %42, i8* %43, i32 1)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %52

48:                                               ; preds = %40
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @free(i8* %49)
  br label %51

51:                                               ; preds = %48, %37
  br label %52

52:                                               ; preds = %51, %47, %26
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dso__load_vmlinux(%struct.dso*, %struct.map*, i8*, i32) #1

declare dso_local i8* @dso__build_id_filename(%struct.dso*, i32*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
