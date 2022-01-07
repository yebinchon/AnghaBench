; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cfg.c_draw_bb_node.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_cfg.c_draw_bb_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_node = type { i32, i32 }
%struct.bb_node = type { i64, i32, i32 }
%struct.dump_data = type { i32 }

@ENTRY_BLOCK_INDEX = common dso_local global i64 0, align 8
@EXIT_BLOCK_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Mdiamond\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\09fn_%d_bb_%d [shape=%s,style=filled,label=\22\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ENTRY\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\22];\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.func_node*, %struct.bb_node*)* @draw_bb_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_bb_node(%struct.func_node* %0, %struct.bb_node* %1) #0 {
  %3 = alloca %struct.func_node*, align 8
  %4 = alloca %struct.bb_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dump_data, align 4
  store %struct.func_node* %0, %struct.func_node** %3, align 8
  store %struct.bb_node* %1, %struct.bb_node** %4, align 8
  %8 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  %9 = getelementptr inbounds %struct.bb_node, %struct.bb_node* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ENTRY_BLOCK_INDEX, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  %15 = getelementptr inbounds %struct.bb_node, %struct.bb_node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EXIT_BLOCK_INDEX, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %21

20:                                               ; preds = %13
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.func_node*, %struct.func_node** %3, align 8
  %23 = getelementptr inbounds %struct.func_node, %struct.func_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  %26 = getelementptr inbounds %struct.bb_node, %struct.bb_node* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %24, i64 %27, i8* %28)
  %30 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  %31 = getelementptr inbounds %struct.bb_node, %struct.bb_node* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ENTRY_BLOCK_INDEX, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %67

37:                                               ; preds = %21
  %38 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  %39 = getelementptr inbounds %struct.bb_node, %struct.bb_node* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @EXIT_BLOCK_INDEX, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %66

45:                                               ; preds = %37
  %46 = bitcast %struct.dump_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %46, i8 0, i64 4, i1 false)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %48 = call i32 @kernel_syms_load(%struct.dump_data* %7)
  %49 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  %50 = getelementptr inbounds %struct.bb_node, %struct.bb_node* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.func_node*, %struct.func_node** %3, align 8
  %53 = getelementptr inbounds %struct.func_node, %struct.func_node* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub i32 %51, %54
  store i32 %55, i32* %6, align 4
  %56 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  %57 = getelementptr inbounds %struct.bb_node, %struct.bb_node* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.bb_node*, %struct.bb_node** %4, align 8
  %60 = getelementptr inbounds %struct.bb_node, %struct.bb_node* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @dump_xlated_for_graph(%struct.dump_data* %7, i32 %58, i32 %61, i32 %62)
  %64 = call i32 @kernel_syms_destroy(%struct.dump_data* %7)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %66

66:                                               ; preds = %45, %43
  br label %67

67:                                               ; preds = %66, %35
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @kernel_syms_load(%struct.dump_data*) #1

declare dso_local i32 @dump_xlated_for_graph(%struct.dump_data*, i32, i32, i32) #1

declare dso_local i32 @kernel_syms_destroy(%struct.dump_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
