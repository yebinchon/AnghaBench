; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_kvm.c_TEP_PLUGIN_UNLOADER.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_kvm.c_TEP_PLUGIN_UNLOADER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"kvm\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"kvm_exit\00", align 1
@kvm_exit_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"kvm_emulate_insn\00", align 1
@kvm_emulate_insn_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"kvm_nested_vmexit\00", align 1
@kvm_nested_vmexit_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"kvm_nested_vmexit_inject\00", align 1
@kvm_nested_vmexit_inject_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"kvmmmu\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"kvm_mmu_get_page\00", align 1
@kvm_mmu_get_page_handler = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"kvm_mmu_sync_page\00", align 1
@kvm_mmu_print_role = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"kvm_mmu_unsync_page\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"kvm_mmu_zap_page\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"kvm_mmu_prepare_zap_page\00", align 1
@process_is_writable_pte = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"is_writable_pte\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TEP_PLUGIN_UNLOADER(%struct.tep_handle* %0) #0 {
  %2 = alloca %struct.tep_handle*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %2, align 8
  %3 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %4 = load i32, i32* @kvm_exit_handler, align 4
  %5 = call i32 @tep_unregister_event_handler(%struct.tep_handle* %3, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %4, i32* null)
  %6 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %7 = load i32, i32* @kvm_emulate_insn_handler, align 4
  %8 = call i32 @tep_unregister_event_handler(%struct.tep_handle* %6, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %7, i32* null)
  %9 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %10 = load i32, i32* @kvm_nested_vmexit_handler, align 4
  %11 = call i32 @tep_unregister_event_handler(%struct.tep_handle* %9, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %10, i32* null)
  %12 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %13 = load i32, i32* @kvm_nested_vmexit_inject_handler, align 4
  %14 = call i32 @tep_unregister_event_handler(%struct.tep_handle* %12, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %13, i32* null)
  %15 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %16 = load i32, i32* @kvm_mmu_get_page_handler, align 4
  %17 = call i32 @tep_unregister_event_handler(%struct.tep_handle* %15, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %16, i32* null)
  %18 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %19 = load i32, i32* @kvm_mmu_print_role, align 4
  %20 = call i32 @tep_unregister_event_handler(%struct.tep_handle* %18, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %19, i32* null)
  %21 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %22 = load i32, i32* @kvm_mmu_print_role, align 4
  %23 = call i32 @tep_unregister_event_handler(%struct.tep_handle* %21, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %22, i32* null)
  %24 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %25 = load i32, i32* @kvm_mmu_print_role, align 4
  %26 = call i32 @tep_unregister_event_handler(%struct.tep_handle* %24, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %25, i32* null)
  %27 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %28 = load i32, i32* @kvm_mmu_print_role, align 4
  %29 = call i32 @tep_unregister_event_handler(%struct.tep_handle* %27, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %28, i32* null)
  %30 = load %struct.tep_handle*, %struct.tep_handle** %2, align 8
  %31 = load i32, i32* @process_is_writable_pte, align 4
  %32 = call i32 @tep_unregister_print_function(%struct.tep_handle* %30, i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @tep_unregister_event_handler(%struct.tep_handle*, i32, i8*, i8*, i32, i32*) #1

declare dso_local i32 @tep_unregister_print_function(%struct.tep_handle*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
