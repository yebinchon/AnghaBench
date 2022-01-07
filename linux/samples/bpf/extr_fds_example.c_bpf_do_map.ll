; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_fds_example.c_bpf_do_map.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_fds_example.c_bpf_do_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_F_PIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bpf: map fd:%d (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"bpf: pin ret:(%d,%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"bpf: get fd:%d (%s)\0A\00", align 1
@BPF_F_KEY_VAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"bpf: fd:%d u->(%u:%u) ret:(%d,%s)\0A\00", align 1
@BPF_F_KEY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"bpf: fd:%d l->(%u):%u ret:(%d,%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @bpf_do_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_do_map(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @BPF_F_PIN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %4
  %16 = call i32 (...) @bpf_map_create()
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @errno, align 4
  %19 = call i8* @strerror(i32 %18)
  %20 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @bpf_obj_pin(i32 %25, i8* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @errno, align 4
  %30 = call i8* @strerror(i32 %29)
  %31 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  br label %47

36:                                               ; preds = %4
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @bpf_obj_get(i8* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @errno, align 4
  %41 = call i8* @strerror(i32 %40)
  %42 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %39, i8* %41)
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  br label %47

47:                                               ; preds = %36, %15
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @BPF_F_KEY_VAL, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @BPF_F_KEY_VAL, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @bpf_map_update_elem(i32 %54, i32* %7, i32* %8, i32 0)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @errno, align 4
  %61 = call i8* @strerror(i32 %60)
  %62 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %57, i32 %58, i32 %59, i8* %61)
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  br label %87

67:                                               ; preds = %47
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @BPF_F_KEY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @bpf_map_lookup_elem(i32 %73, i32* %7, i32* %8)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @errno, align 4
  %80 = call i8* @strerror(i32 %79)
  %81 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %76, i32 %77, i32 %78, i8* %80)
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  br label %86

86:                                               ; preds = %72, %67
  br label %87

87:                                               ; preds = %86, %53
  ret i32 0
}

declare dso_local i32 @bpf_map_create(...) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bpf_obj_pin(i32, i8*) #1

declare dso_local i32 @bpf_obj_get(i8*) #1

declare dso_local i32 @bpf_map_update_elem(i32, i32*, i32*, i32) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
