; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c___parse_bitfield_probe_arg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c___parse_bitfield_probe_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_type = type { i32 }
%struct.fetch_insn = type { i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FETCH_OP_NOP = common dso_local global i64 0, align 8
@FETCH_OP_MOD_BF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.fetch_type*, %struct.fetch_insn**)* @__parse_bitfield_probe_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__parse_bitfield_probe_arg(i8* %0, %struct.fetch_type* %1, %struct.fetch_insn** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fetch_type*, align 8
  %7 = alloca %struct.fetch_insn**, align 8
  %8 = alloca %struct.fetch_insn*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.fetch_type* %1, %struct.fetch_type** %6, align 8
  store %struct.fetch_insn** %2, %struct.fetch_insn*** %7, align 8
  %12 = load %struct.fetch_insn**, %struct.fetch_insn*** %7, align 8
  %13 = load %struct.fetch_insn*, %struct.fetch_insn** %12, align 8
  store %struct.fetch_insn* %13, %struct.fetch_insn** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 98
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %103

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = call i64 @simple_strtoul(i8* %21, i8** %11, i32 0)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %11, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 64
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %19
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %103

33:                                               ; preds = %25
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @simple_strtoul(i8* %36, i8** %11, i32 0)
  store i64 %37, i64* %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load i8*, i8** %11, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 47
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %33
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %103

49:                                               ; preds = %41
  %50 = load %struct.fetch_insn*, %struct.fetch_insn** %8, align 8
  %51 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %50, i32 1
  store %struct.fetch_insn* %51, %struct.fetch_insn** %8, align 8
  %52 = load %struct.fetch_insn*, %struct.fetch_insn** %8, align 8
  %53 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FETCH_OP_NOP, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %103

60:                                               ; preds = %49
  %61 = load %struct.fetch_insn*, %struct.fetch_insn** %8, align 8
  %62 = load %struct.fetch_insn**, %struct.fetch_insn*** %7, align 8
  store %struct.fetch_insn* %61, %struct.fetch_insn** %62, align 8
  %63 = load i64, i64* @FETCH_OP_MOD_BF, align 8
  %64 = load %struct.fetch_insn*, %struct.fetch_insn** %8, align 8
  %65 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.fetch_type*, %struct.fetch_type** %6, align 8
  %67 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @BYTES_TO_BITS(i32 %68)
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %70, %71
  %73 = sub i64 %69, %72
  %74 = load %struct.fetch_insn*, %struct.fetch_insn** %8, align 8
  %75 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.fetch_type*, %struct.fetch_type** %6, align 8
  %77 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @BYTES_TO_BITS(i32 %78)
  %80 = load i64, i64* %9, align 8
  %81 = sub i64 %79, %80
  %82 = load %struct.fetch_insn*, %struct.fetch_insn** %8, align 8
  %83 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.fetch_type*, %struct.fetch_type** %6, align 8
  %85 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.fetch_insn*, %struct.fetch_insn** %8, align 8
  %88 = getelementptr inbounds %struct.fetch_insn, %struct.fetch_insn* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.fetch_type*, %struct.fetch_type** %6, align 8
  %90 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @BYTES_TO_BITS(i32 %91)
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %93, %94
  %96 = icmp ult i64 %92, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %60
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  br label %101

100:                                              ; preds = %60
  br label %101

101:                                              ; preds = %100, %97
  %102 = phi i32 [ %99, %97 ], [ 0, %100 ]
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %57, %46, %30, %18
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @BYTES_TO_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
