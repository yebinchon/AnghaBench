; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_expr_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_expr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_ctx = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_expr_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)*, %struct.module* }
%struct.module = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nft_expr* @nft_expr_init(%struct.nft_ctx* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.nft_expr*, align 8
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.nft_expr_info, align 8
  %7 = alloca %struct.nft_expr*, align 8
  %8 = alloca %struct.module*, align 8
  %9 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %10 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %11 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %12 = call i32 @nf_tables_expr_parse(%struct.nft_ctx* %10, %struct.nlattr* %11, %struct.nft_expr_info* %6)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %67

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = getelementptr inbounds %struct.nft_expr_info, %struct.nft_expr_info* %6, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.nft_expr* @kzalloc(i32 %22, i32 %23)
  store %struct.nft_expr* %24, %struct.nft_expr** %7, align 8
  %25 = load %struct.nft_expr*, %struct.nft_expr** %7, align 8
  %26 = icmp eq %struct.nft_expr* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %40

28:                                               ; preds = %16
  %29 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %30 = load %struct.nft_expr*, %struct.nft_expr** %7, align 8
  %31 = call i32 @nf_tables_newexpr(%struct.nft_ctx* %29, %struct.nft_expr_info* %6, %struct.nft_expr* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %37

35:                                               ; preds = %28
  %36 = load %struct.nft_expr*, %struct.nft_expr** %7, align 8
  store %struct.nft_expr* %36, %struct.nft_expr** %3, align 8
  br label %70

37:                                               ; preds = %34
  %38 = load %struct.nft_expr*, %struct.nft_expr** %7, align 8
  %39 = call i32 @kfree(%struct.nft_expr* %38)
  br label %40

40:                                               ; preds = %37, %27
  %41 = getelementptr inbounds %struct.nft_expr_info, %struct.nft_expr_info* %6, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load %struct.module*, %struct.module** %45, align 8
  store %struct.module* %46, %struct.module** %8, align 8
  %47 = getelementptr inbounds %struct.nft_expr_info, %struct.nft_expr_info* %6, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %51, align 8
  %53 = icmp ne i32 (%struct.TYPE_4__*)* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.nft_expr_info, %struct.nft_expr_info* %6, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %59, align 8
  %61 = getelementptr inbounds %struct.nft_expr_info, %struct.nft_expr_info* %6, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 %60(%struct.TYPE_4__* %62)
  br label %64

64:                                               ; preds = %54, %40
  %65 = load %struct.module*, %struct.module** %8, align 8
  %66 = call i32 @module_put(%struct.module* %65)
  br label %67

67:                                               ; preds = %64, %15
  %68 = load i32, i32* %9, align 4
  %69 = call %struct.nft_expr* @ERR_PTR(i32 %68)
  store %struct.nft_expr* %69, %struct.nft_expr** %3, align 8
  br label %70

70:                                               ; preds = %67, %35
  %71 = load %struct.nft_expr*, %struct.nft_expr** %3, align 8
  ret %struct.nft_expr* %71
}

declare dso_local i32 @nf_tables_expr_parse(%struct.nft_ctx*, %struct.nlattr*, %struct.nft_expr_info*) #1

declare dso_local %struct.nft_expr* @kzalloc(i32, i32) #1

declare dso_local i32 @nf_tables_newexpr(%struct.nft_ctx*, %struct.nft_expr_info*, %struct.nft_expr*) #1

declare dso_local i32 @kfree(%struct.nft_expr*) #1

declare dso_local i32 @module_put(%struct.module*) #1

declare dso_local %struct.nft_expr* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
