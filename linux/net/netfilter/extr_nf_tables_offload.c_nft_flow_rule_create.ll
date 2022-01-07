; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_offload.c_nft_flow_rule_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_offload.c_nft_flow_rule_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_flow_rule = type { i32 }
%struct.net = type { i32 }
%struct.nft_rule = type { i32 }
%struct.nft_offload_ctx = type { %struct.TYPE_4__, %struct.net* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nft_expr = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 (%struct.nft_offload_ctx*, %struct.nft_flow_rule*, %struct.nft_expr*)* }

@NFT_OFFLOAD_F_ACTION = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NFT_OFFLOAD_DEP_UNSPEC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nft_flow_rule* @nft_flow_rule_create(%struct.net* %0, %struct.nft_rule* %1) #0 {
  %3 = alloca %struct.nft_flow_rule*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nft_rule*, align 8
  %6 = alloca %struct.nft_offload_ctx*, align 8
  %7 = alloca %struct.nft_flow_rule*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nft_expr*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nft_rule* %1, %struct.nft_rule** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.nft_rule*, %struct.nft_rule** %5, align 8
  %12 = call %struct.nft_expr* @nft_expr_first(%struct.nft_rule* %11)
  store %struct.nft_expr* %12, %struct.nft_expr** %10, align 8
  br label %13

13:                                               ; preds = %37, %2
  %14 = load %struct.nft_expr*, %struct.nft_expr** %10, align 8
  %15 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.nft_expr*, %struct.nft_expr** %10, align 8
  %20 = load %struct.nft_rule*, %struct.nft_rule** %5, align 8
  %21 = call %struct.nft_expr* @nft_expr_last(%struct.nft_rule* %20)
  %22 = icmp ne %struct.nft_expr* %19, %21
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  br i1 %24, label %25, label %40

25:                                               ; preds = %23
  %26 = load %struct.nft_expr*, %struct.nft_expr** %10, align 8
  %27 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @NFT_OFFLOAD_F_ACTION, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %25
  %38 = load %struct.nft_expr*, %struct.nft_expr** %10, align 8
  %39 = call %struct.nft_expr* @nft_expr_next(%struct.nft_expr* %38)
  store %struct.nft_expr* %39, %struct.nft_expr** %10, align 8
  br label %13

40:                                               ; preds = %23
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.nft_flow_rule* @nft_flow_rule_alloc(i32 %41)
  store %struct.nft_flow_rule* %42, %struct.nft_flow_rule** %7, align 8
  %43 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %7, align 8
  %44 = icmp ne %struct.nft_flow_rule* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.nft_flow_rule* @ERR_PTR(i32 %47)
  store %struct.nft_flow_rule* %48, %struct.nft_flow_rule** %3, align 8
  br label %122

49:                                               ; preds = %40
  %50 = load %struct.nft_rule*, %struct.nft_rule** %5, align 8
  %51 = call %struct.nft_expr* @nft_expr_first(%struct.nft_rule* %50)
  store %struct.nft_expr* %51, %struct.nft_expr** %10, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.nft_offload_ctx* @kzalloc(i32 16, i32 %52)
  store %struct.nft_offload_ctx* %53, %struct.nft_offload_ctx** %6, align 8
  %54 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %6, align 8
  %55 = icmp ne %struct.nft_offload_ctx* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %115

59:                                               ; preds = %49
  %60 = load %struct.net*, %struct.net** %4, align 8
  %61 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.nft_offload_ctx, %struct.nft_offload_ctx* %61, i32 0, i32 1
  store %struct.net* %60, %struct.net** %62, align 8
  %63 = load i32, i32* @NFT_OFFLOAD_DEP_UNSPEC, align 4
  %64 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %6, align 8
  %65 = getelementptr inbounds %struct.nft_offload_ctx, %struct.nft_offload_ctx* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %102, %59
  %68 = load %struct.nft_expr*, %struct.nft_expr** %10, align 8
  %69 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = icmp ne %struct.TYPE_3__* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.nft_expr*, %struct.nft_expr** %10, align 8
  %74 = load %struct.nft_rule*, %struct.nft_rule** %5, align 8
  %75 = call %struct.nft_expr* @nft_expr_last(%struct.nft_rule* %74)
  %76 = icmp ne %struct.nft_expr* %73, %75
  br label %77

77:                                               ; preds = %72, %67
  %78 = phi i1 [ false, %67 ], [ %76, %72 ]
  br i1 %78, label %79, label %105

79:                                               ; preds = %77
  %80 = load %struct.nft_expr*, %struct.nft_expr** %10, align 8
  %81 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32 (%struct.nft_offload_ctx*, %struct.nft_flow_rule*, %struct.nft_expr*)*, i32 (%struct.nft_offload_ctx*, %struct.nft_flow_rule*, %struct.nft_expr*)** %83, align 8
  %85 = icmp ne i32 (%struct.nft_offload_ctx*, %struct.nft_flow_rule*, %struct.nft_expr*)* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %9, align 4
  br label %115

89:                                               ; preds = %79
  %90 = load %struct.nft_expr*, %struct.nft_expr** %10, align 8
  %91 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32 (%struct.nft_offload_ctx*, %struct.nft_flow_rule*, %struct.nft_expr*)*, i32 (%struct.nft_offload_ctx*, %struct.nft_flow_rule*, %struct.nft_expr*)** %93, align 8
  %95 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %6, align 8
  %96 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %7, align 8
  %97 = load %struct.nft_expr*, %struct.nft_expr** %10, align 8
  %98 = call i32 %94(%struct.nft_offload_ctx* %95, %struct.nft_flow_rule* %96, %struct.nft_expr* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  br label %115

102:                                              ; preds = %89
  %103 = load %struct.nft_expr*, %struct.nft_expr** %10, align 8
  %104 = call %struct.nft_expr* @nft_expr_next(%struct.nft_expr* %103)
  store %struct.nft_expr* %104, %struct.nft_expr** %10, align 8
  br label %67

105:                                              ; preds = %77
  %106 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %6, align 8
  %107 = getelementptr inbounds %struct.nft_offload_ctx, %struct.nft_offload_ctx* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %7, align 8
  %111 = getelementptr inbounds %struct.nft_flow_rule, %struct.nft_flow_rule* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %6, align 8
  %113 = call i32 @kfree(%struct.nft_offload_ctx* %112)
  %114 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %7, align 8
  store %struct.nft_flow_rule* %114, %struct.nft_flow_rule** %3, align 8
  br label %122

115:                                              ; preds = %101, %86, %56
  %116 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %6, align 8
  %117 = call i32 @kfree(%struct.nft_offload_ctx* %116)
  %118 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %7, align 8
  %119 = call i32 @nft_flow_rule_destroy(%struct.nft_flow_rule* %118)
  %120 = load i32, i32* %9, align 4
  %121 = call %struct.nft_flow_rule* @ERR_PTR(i32 %120)
  store %struct.nft_flow_rule* %121, %struct.nft_flow_rule** %3, align 8
  br label %122

122:                                              ; preds = %115, %105, %45
  %123 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %3, align 8
  ret %struct.nft_flow_rule* %123
}

declare dso_local %struct.nft_expr* @nft_expr_first(%struct.nft_rule*) #1

declare dso_local %struct.nft_expr* @nft_expr_last(%struct.nft_rule*) #1

declare dso_local %struct.nft_expr* @nft_expr_next(%struct.nft_expr*) #1

declare dso_local %struct.nft_flow_rule* @nft_flow_rule_alloc(i32) #1

declare dso_local %struct.nft_flow_rule* @ERR_PTR(i32) #1

declare dso_local %struct.nft_offload_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.nft_offload_ctx*) #1

declare dso_local i32 @nft_flow_rule_destroy(%struct.nft_flow_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
