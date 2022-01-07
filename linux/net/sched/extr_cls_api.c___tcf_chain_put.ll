; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c___tcf_chain_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c___tcf_chain_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_chain = type { i32, i32, i32, i32, i32, i8*, %struct.tcf_proto_ops*, %struct.tcf_block* }
%struct.tcf_proto_ops = type { i32 }
%struct.tcf_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_chain*, i32, i32)* @__tcf_chain_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tcf_chain_put(%struct.tcf_chain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tcf_chain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcf_block*, align 8
  %8 = alloca %struct.tcf_proto_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.tcf_chain* %0, %struct.tcf_chain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %13 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %12, i32 0, i32 7
  %14 = load %struct.tcf_block*, %struct.tcf_block** %13, align 8
  store %struct.tcf_block* %14, %struct.tcf_block** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.tcf_block*, %struct.tcf_block** %7, align 8
  %16 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %22 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load %struct.tcf_block*, %struct.tcf_block** %7, align 8
  %27 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  br label %89

29:                                               ; preds = %20
  %30 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %31 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %3
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %37 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %35, %32
  %41 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %42 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add i32 %43, -1
  store i32 %44, i32* %42, align 8
  store i32 %44, i32* %10, align 4
  %45 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %46 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %45, i32 0, i32 6
  %47 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %46, align 8
  store %struct.tcf_proto_ops* %47, %struct.tcf_proto_ops** %8, align 8
  %48 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %49 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %11, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %53 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub i32 %51, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %40
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %8, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %64 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.tcf_block*, %struct.tcf_block** %7, align 8
  %67 = call i32 @tc_chain_notify_delete(%struct.tcf_proto_ops* %61, i8* %62, i32 %65, %struct.tcf_block* %66, i32* null, i32 0, i32 0, i32 0)
  %68 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %69 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %68, i32 0, i32 3
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %60, %57, %40
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %75 = call i32 @tcf_chain_detach(%struct.tcf_chain* %74)
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.tcf_block*, %struct.tcf_block** %7, align 8
  %78 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %8, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @tc_chain_tmplt_del(%struct.tcf_proto_ops* %83, i8* %84)
  %86 = load %struct.tcf_chain*, %struct.tcf_chain** %4, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @tcf_chain_destroy(%struct.tcf_chain* %86, i32 %87)
  br label %89

89:                                               ; preds = %25, %82, %76
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tc_chain_notify_delete(%struct.tcf_proto_ops*, i8*, i32, %struct.tcf_block*, i32*, i32, i32, i32) #1

declare dso_local i32 @tcf_chain_detach(%struct.tcf_chain*) #1

declare dso_local i32 @tc_chain_tmplt_del(%struct.tcf_proto_ops*, i8*) #1

declare dso_local i32 @tcf_chain_destroy(%struct.tcf_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
