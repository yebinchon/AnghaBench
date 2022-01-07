; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_verifier_log_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_verifier_log_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { %struct.btf*, %struct.bpf_verifier_log }
%struct.btf = type { %struct.btf_header }
%struct.btf_header = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bpf_verifier_log = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"magic: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"version: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"flags: 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"hdr_len: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"type_off: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"type_len: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"str_off: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"str_len: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"btf_total_size: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btf_verifier_env*, i32)* @btf_verifier_log_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btf_verifier_log_hdr(%struct.btf_verifier_env* %0, i32 %1) #0 {
  %3 = alloca %struct.btf_verifier_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_log*, align 8
  %6 = alloca %struct.btf*, align 8
  %7 = alloca %struct.btf_header*, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %9 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %8, i32 0, i32 1
  store %struct.bpf_verifier_log* %9, %struct.bpf_verifier_log** %5, align 8
  %10 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %3, align 8
  %11 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %10, i32 0, i32 0
  %12 = load %struct.btf*, %struct.btf** %11, align 8
  store %struct.btf* %12, %struct.btf** %6, align 8
  %13 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %5, align 8
  %14 = call i32 @bpf_verifier_log_needed(%struct.bpf_verifier_log* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %63

17:                                               ; preds = %2
  %18 = load %struct.btf*, %struct.btf** %6, align 8
  %19 = getelementptr inbounds %struct.btf, %struct.btf* %18, i32 0, i32 0
  store %struct.btf_header* %19, %struct.btf_header** %7, align 8
  %20 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %5, align 8
  %21 = load %struct.btf_header*, %struct.btf_header** %7, align 8
  %22 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__btf_verifier_log(%struct.bpf_verifier_log* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %5, align 8
  %26 = load %struct.btf_header*, %struct.btf_header** %7, align 8
  %27 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__btf_verifier_log(%struct.bpf_verifier_log* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %5, align 8
  %31 = load %struct.btf_header*, %struct.btf_header** %7, align 8
  %32 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__btf_verifier_log(%struct.bpf_verifier_log* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %5, align 8
  %36 = load %struct.btf_header*, %struct.btf_header** %7, align 8
  %37 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__btf_verifier_log(%struct.bpf_verifier_log* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %5, align 8
  %41 = load %struct.btf_header*, %struct.btf_header** %7, align 8
  %42 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__btf_verifier_log(%struct.bpf_verifier_log* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %5, align 8
  %46 = load %struct.btf_header*, %struct.btf_header** %7, align 8
  %47 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__btf_verifier_log(%struct.bpf_verifier_log* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  %50 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %5, align 8
  %51 = load %struct.btf_header*, %struct.btf_header** %7, align 8
  %52 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__btf_verifier_log(%struct.bpf_verifier_log* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  %55 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %5, align 8
  %56 = load %struct.btf_header*, %struct.btf_header** %7, align 8
  %57 = getelementptr inbounds %struct.btf_header, %struct.btf_header* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @__btf_verifier_log(%struct.bpf_verifier_log* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  %60 = load %struct.bpf_verifier_log*, %struct.bpf_verifier_log** %5, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @__btf_verifier_log(%struct.bpf_verifier_log* %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @bpf_verifier_log_needed(%struct.bpf_verifier_log*) #1

declare dso_local i32 @__btf_verifier_log(%struct.bpf_verifier_log*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
