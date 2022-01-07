; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_flow_dissector_load.c_load_and_attach_program.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_flow_dissector_load.c_load_and_attach_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }

@cfg_path_name = common dso_local global i8* null, align 8
@cfg_section_name = common dso_local global i32 0, align 4
@cfg_map_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"bpf_flow_load %s\00", align 1
@BPF_FLOW_DISSECTOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"bpf_prog_attach %s\00", align 1
@cfg_pin_path = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"bpf_object__pin %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_and_attach_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_and_attach_program() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_object*, align 8
  %4 = load i8*, i8** @cfg_path_name, align 8
  %5 = load i32, i32* @cfg_section_name, align 4
  %6 = load i32, i32* @cfg_map_name, align 4
  %7 = call i32 @bpf_flow_load(%struct.bpf_object** %3, i8* %4, i32 %5, i32 %6, i32* null, i32* %1, i32* null)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i8*, i8** @cfg_path_name, align 8
  %12 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @BPF_FLOW_DISSECTOR, align 4
  %16 = call i32 @bpf_prog_attach(i32 %14, i32 0, i32 %15, i32 0)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i8*, i8** @cfg_path_name, align 8
  %21 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.bpf_object*, %struct.bpf_object** %3, align 8
  %24 = load i8*, i8** @cfg_pin_path, align 8
  %25 = call i32 @bpf_object__pin(%struct.bpf_object* %23, i8* %24)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i8*, i8** @cfg_pin_path, align 8
  %30 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %22
  ret void
}

declare dso_local i32 @bpf_flow_load(%struct.bpf_object**, i8*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @error(i32, i32, i8*, i8*) #1

declare dso_local i32 @bpf_prog_attach(i32, i32, i32, i32) #1

declare dso_local i32 @bpf_object__pin(%struct.bpf_object*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
