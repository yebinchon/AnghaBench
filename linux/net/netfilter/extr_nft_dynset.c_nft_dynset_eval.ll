; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_dynset.c_nft_dynset_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_dynset.c_nft_dynset_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* }
%struct.nft_regs = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i8* }
%struct.nft_pktinfo = type { i32 }
%struct.nft_dynset = type { i64, i64, i64, i64, %struct.nft_set* }
%struct.nft_set = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.nft_set*, i32*, i32, %struct.nft_expr*, %struct.nft_regs*, %struct.nft_set_ext**)*, i32 (%struct.nft_set*, i32*)* }
%struct.nft_set_ext = type { i32 }

@NFT_DYNSET_OP_DELETE = common dso_local global i64 0, align 8
@nft_dynset_new = common dso_local global i32 0, align 4
@NFT_SET_EXT_EXPR = common dso_local global i32 0, align 4
@NFT_DYNSET_OP_UPDATE = common dso_local global i64 0, align 8
@NFT_SET_EXT_EXPIRATION = common dso_local global i32 0, align 4
@NFT_BREAK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nft_dynset_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_dynset*, align 8
  %8 = alloca %struct.nft_set*, align 8
  %9 = alloca %struct.nft_set_ext*, align 8
  %10 = alloca %struct.nft_expr*, align 8
  %11 = alloca i64, align 8
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %12 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %13 = call %struct.nft_dynset* @nft_expr_priv(%struct.nft_expr* %12)
  store %struct.nft_dynset* %13, %struct.nft_dynset** %7, align 8
  %14 = load %struct.nft_dynset*, %struct.nft_dynset** %7, align 8
  %15 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %14, i32 0, i32 4
  %16 = load %struct.nft_set*, %struct.nft_set** %15, align 8
  store %struct.nft_set* %16, %struct.nft_set** %8, align 8
  %17 = load %struct.nft_dynset*, %struct.nft_dynset** %7, align 8
  %18 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NFT_DYNSET_OP_DELETE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %3
  %23 = load %struct.nft_set*, %struct.nft_set** %8, align 8
  %24 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32 (%struct.nft_set*, i32*)*, i32 (%struct.nft_set*, i32*)** %26, align 8
  %28 = load %struct.nft_set*, %struct.nft_set** %8, align 8
  %29 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %30 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.nft_dynset*, %struct.nft_dynset** %7, align 8
  %33 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = call i32 %27(%struct.nft_set* %28, i32* %35)
  br label %126

37:                                               ; preds = %3
  %38 = load %struct.nft_set*, %struct.nft_set** %8, align 8
  %39 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64 (%struct.nft_set*, i32*, i32, %struct.nft_expr*, %struct.nft_regs*, %struct.nft_set_ext**)*, i64 (%struct.nft_set*, i32*, i32, %struct.nft_expr*, %struct.nft_regs*, %struct.nft_set_ext**)** %41, align 8
  %43 = load %struct.nft_set*, %struct.nft_set** %8, align 8
  %44 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %45 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.nft_dynset*, %struct.nft_dynset** %7, align 8
  %48 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* @nft_dynset_new, align 4
  %52 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %53 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %54 = call i64 %42(%struct.nft_set* %43, i32* %50, i32 %51, %struct.nft_expr* %52, %struct.nft_regs* %53, %struct.nft_set_ext** %9)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %116

56:                                               ; preds = %37
  store %struct.nft_expr* null, %struct.nft_expr** %10, align 8
  %57 = load %struct.nft_set_ext*, %struct.nft_set_ext** %9, align 8
  %58 = load i32, i32* @NFT_SET_EXT_EXPR, align 4
  %59 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.nft_set_ext*, %struct.nft_set_ext** %9, align 8
  %63 = call %struct.nft_expr* @nft_set_ext_expr(%struct.nft_set_ext* %62)
  store %struct.nft_expr* %63, %struct.nft_expr** %10, align 8
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.nft_dynset*, %struct.nft_dynset** %7, align 8
  %66 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NFT_DYNSET_OP_UPDATE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %64
  %71 = load %struct.nft_set_ext*, %struct.nft_set_ext** %9, align 8
  %72 = load i32, i32* @NFT_SET_EXT_EXPIRATION, align 4
  %73 = call i64 @nft_set_ext_exists(%struct.nft_set_ext* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %70
  %76 = load %struct.nft_dynset*, %struct.nft_dynset** %7, align 8
  %77 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %85

81:                                               ; preds = %75
  %82 = load %struct.nft_set*, %struct.nft_set** %8, align 8
  %83 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  br label %85

85:                                               ; preds = %81, %80
  %86 = phi i64 [ %78, %80 ], [ %84, %81 ]
  store i64 %86, i64* %11, align 8
  %87 = call i64 (...) @get_jiffies_64()
  %88 = load i64, i64* %11, align 8
  %89 = add nsw i64 %87, %88
  %90 = load %struct.nft_set_ext*, %struct.nft_set_ext** %9, align 8
  %91 = call i64* @nft_set_ext_expiration(%struct.nft_set_ext* %90)
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %85, %70, %64
  %93 = load %struct.nft_expr*, %struct.nft_expr** %10, align 8
  %94 = icmp ne %struct.nft_expr* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load %struct.nft_expr*, %struct.nft_expr** %10, align 8
  %97 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32 (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)*, i32 (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)** %99, align 8
  %101 = load %struct.nft_expr*, %struct.nft_expr** %10, align 8
  %102 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %103 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %104 = call i32 %100(%struct.nft_expr* %101, %struct.nft_regs* %102, %struct.nft_pktinfo* %103)
  br label %105

105:                                              ; preds = %95, %92
  %106 = load %struct.nft_dynset*, %struct.nft_dynset** %7, align 8
  %107 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i8*, i8** @NFT_BREAK, align 8
  %112 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %113 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i8* %111, i8** %114, align 8
  br label %115

115:                                              ; preds = %110, %105
  br label %126

116:                                              ; preds = %37
  %117 = load %struct.nft_dynset*, %struct.nft_dynset** %7, align 8
  %118 = getelementptr inbounds %struct.nft_dynset, %struct.nft_dynset* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load i8*, i8** @NFT_BREAK, align 8
  %123 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %124 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  br label %126

126:                                              ; preds = %22, %115, %121, %116
  ret void
}

declare dso_local %struct.nft_dynset* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nft_set_ext_exists(%struct.nft_set_ext*, i32) #1

declare dso_local %struct.nft_expr* @nft_set_ext_expr(%struct.nft_set_ext*) #1

declare dso_local i64 @get_jiffies_64(...) #1

declare dso_local i64* @nft_set_ext_expiration(%struct.nft_set_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
