; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_kvm.c_kvm_mmu_print_role.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_kvm.c_kvm_mmu_print_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.tep_record = type { i32 }
%struct.tep_event = type { i32 }
%union.kvm_mmu_page_role = type { i64 }

@kvm_mmu_print_role.access_str = internal global [8 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"--x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"w--\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"w-x\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-u-\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"-ux\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"wu-\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"wux\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"%u q%u%s %s%s %spae %snxe %swp%s%s%s\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" direct\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" invalid\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c" smep\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" smap\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" smm\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"WORD: %08x\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c" root %u \00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"root_count\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"unsync\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, %struct.tep_record*, %struct.tep_event*, i8*)* @kvm_mmu_print_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_mmu_print_role(%struct.trace_seq* %0, %struct.tep_record* %1, %struct.tep_event* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca %struct.tep_record*, align 8
  %8 = alloca %struct.tep_event*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.kvm_mmu_page_role, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %6, align 8
  store %struct.tep_record* %1, %struct.tep_record** %7, align 8
  store %struct.tep_event* %2, %struct.tep_event** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %13 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %14 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %15 = call i64 @tep_get_field_val(%struct.trace_seq* %12, %struct.tep_event* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), %struct.tep_record* %14, i64* %10, i32 1)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %105

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  %20 = trunc i64 %19 to i32
  %21 = bitcast %union.kvm_mmu_page_role* %11 to i32*
  store i32 %20, i32* %21, align 8
  %22 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %23 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @tep_is_file_bigendian(i32 %24)
  %26 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %27 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @tep_is_local_bigendian(i32 %28)
  %30 = icmp eq i64 %25, %29
  br i1 %30, label %31, label %82

31:                                               ; preds = %18
  %32 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %33 = bitcast %union.kvm_mmu_page_role* %11 to i32*
  %34 = load i32, i32* %33, align 8
  %35 = bitcast %union.kvm_mmu_page_role* %11 to i32*
  %36 = load i32, i32* %35, align 8
  %37 = bitcast %union.kvm_mmu_page_role* %11 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %42 = bitcast %union.kvm_mmu_page_role* %11 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds [8 x i8*], [8 x i8*]* @kvm_mmu_print_role.access_str, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = bitcast %union.kvm_mmu_page_role* %11 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %51 = bitcast %union.kvm_mmu_page_role* %11 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %56 = bitcast %union.kvm_mmu_page_role* %11 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %61 = bitcast %union.kvm_mmu_page_role* %11 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %66 = bitcast %union.kvm_mmu_page_role* %11 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %71 = bitcast %union.kvm_mmu_page_role* %11 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %76 = bitcast %union.kvm_mmu_page_role* %11 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %81 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %34, i32 %36, i8* %41, i8* %45, i8* %50, i8* %55, i8* %60, i8* %65, i8* %70, i8* %75, i8* %80)
  br label %87

82:                                               ; preds = %18
  %83 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %84 = bitcast %union.kvm_mmu_page_role* %11 to i32*
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %82, %31
  %88 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %89 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %90 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %91 = call i32 @tep_print_num_field(%struct.trace_seq* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), %struct.tep_event* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), %struct.tep_record* %90, i32 1)
  %92 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %93 = load %struct.tep_event*, %struct.tep_event** %8, align 8
  %94 = load %struct.tep_record*, %struct.tep_record** %7, align 8
  %95 = call i64 @tep_get_field_val(%struct.trace_seq* %92, %struct.tep_event* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), %struct.tep_record* %94, i64* %10, i32 1)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  store i32 -1, i32* %5, align 4
  br label %105

98:                                               ; preds = %87
  %99 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)
  %104 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %103, i32 0)
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %98, %97, %17
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i64 @tep_get_field_val(%struct.trace_seq*, %struct.tep_event*, i8*, %struct.tep_record*, i64*, i32) #1

declare dso_local i64 @tep_is_file_bigendian(i32) #1

declare dso_local i64 @tep_is_local_bigendian(i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i32 @tep_print_num_field(%struct.trace_seq*, i8*, %struct.tep_event*, i8*, %struct.tep_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
