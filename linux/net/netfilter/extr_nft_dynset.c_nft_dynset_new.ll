; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_dynset.c_nft_dynset_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_dynset.c_nft_dynset_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_set = type { i32, i64, i32 }
%struct.nft_expr = type { i32 }
%struct.nft_regs = type { i32* }
%struct.nft_dynset = type { i64, i64, i32*, i32, i64 }
%struct.nft_set_ext = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nft_set*, %struct.nft_expr*, %struct.nft_regs*)* @nft_dynset_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nft_dynset_new(%struct.nft_set* %0, %struct.nft_expr* %1, %struct.nft_regs* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nft_set*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nft_regs*, align 8
  %8 = alloca %struct.nft_dynset*, align 8
  %9 = alloca %struct.nft_set_ext*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.nft_set* %0, %struct.nft_set** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nft_regs* %2, %struct.nft_regs** %7, align 8
  %12 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %13 = call %struct.nft_dynset* @nft_expr_priv(%struct.nft_expr* %12)
  store %struct.nft_dynset* %13, %struct.nft_dynset** %8, align 8
  %14 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %15 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %14, i32 0, i32 0
  %16 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %17 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @atomic_add_unless(i32* %15, i32 1, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %92

22:                                               ; preds = %3
  %23 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %24 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %33

28:                                               ; preds = %22
  %29 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %30 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  br label %33

33:                                               ; preds = %28, %27
  %34 = phi i64 [ %25, %27 ], [ %32, %28 ]
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %37 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %38 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %37, i32 0, i32 3
  %39 = load %struct.nft_regs*, %struct.nft_regs** %7, align 8
  %40 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %43 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load %struct.nft_regs*, %struct.nft_regs** %7, align 8
  %47 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %50 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @GFP_ATOMIC, align 4
  %55 = call i8* @nft_set_elem_init(%struct.nft_set* %36, i32* %38, i32* %45, i32* %52, i32 %53, i32 0, i32 %54)
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %33
  br label %82

59:                                               ; preds = %33
  %60 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call %struct.nft_set_ext* @nft_set_elem_ext(%struct.nft_set* %60, i8* %61)
  store %struct.nft_set_ext* %62, %struct.nft_set_ext** %9, align 8
  %63 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %64 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %59
  %68 = load %struct.nft_set_ext*, %struct.nft_set_ext** %9, align 8
  %69 = call i32 @nft_set_ext_expr(%struct.nft_set_ext* %68)
  %70 = load %struct.nft_dynset*, %struct.nft_dynset** %8, align 8
  %71 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @nft_expr_clone(i32 %69, i32* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %78

76:                                               ; preds = %67, %59
  %77 = load i8*, i8** %11, align 8
  store i8* %77, i8** %4, align 8
  br label %92

78:                                               ; preds = %75
  %79 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @nft_set_elem_destroy(%struct.nft_set* %79, i8* %80, i32 0)
  br label %82

82:                                               ; preds = %78, %58
  %83 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %84 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %89 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %88, i32 0, i32 0
  %90 = call i32 @atomic_dec(i32* %89)
  br label %91

91:                                               ; preds = %87, %82
  store i8* null, i8** %4, align 8
  br label %92

92:                                               ; preds = %91, %76, %21
  %93 = load i8*, i8** %4, align 8
  ret i8* %93
}

declare dso_local %struct.nft_dynset* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @atomic_add_unless(i32*, i32, i64) #1

declare dso_local i8* @nft_set_elem_init(%struct.nft_set*, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local %struct.nft_set_ext* @nft_set_elem_ext(%struct.nft_set*, i8*) #1

declare dso_local i64 @nft_expr_clone(i32, i32*) #1

declare dso_local i32 @nft_set_ext_expr(%struct.nft_set_ext*) #1

declare dso_local i32 @nft_set_elem_destroy(%struct.nft_set*, i8*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
