; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fib.c_nft_fib_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_fib.c_nft_fib_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_fib = type { i32, i32, i32 }

@NFTA_FIB_DREG = common dso_local global i64 0, align 8
@NFTA_FIB_RESULT = common dso_local global i64 0, align 8
@NFTA_FIB_FLAGS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_FIB_F_ALL = common dso_local global i32 0, align 4
@NFTA_FIB_F_SADDR = common dso_local global i32 0, align 4
@NFTA_FIB_F_DADDR = common dso_local global i32 0, align 4
@NFTA_FIB_F_IIF = common dso_local global i32 0, align 4
@NFTA_FIB_F_OIF = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@NFT_DATA_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nft_fib_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_fib*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %11 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %12 = call %struct.nft_fib* @nft_expr_priv(%struct.nft_expr* %11)
  store %struct.nft_fib* %12, %struct.nft_fib** %8, align 8
  %13 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %14 = load i64, i64* @NFTA_FIB_DREG, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = icmp ne %struct.nlattr* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %20 = load i64, i64* @NFTA_FIB_RESULT, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %26 = load i64, i64* @NFTA_FIB_FLAGS, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24, %18, %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %160

33:                                               ; preds = %24
  %34 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %35 = load i64, i64* @NFTA_FIB_FLAGS, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = call i32 @nla_get_be32(%struct.nlattr* %37)
  %39 = call i8* @ntohl(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.nft_fib*, %struct.nft_fib** %8, align 8
  %42 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.nft_fib*, %struct.nft_fib** %8, align 8
  %44 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %33
  %48 = load %struct.nft_fib*, %struct.nft_fib** %8, align 8
  %49 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NFTA_FIB_F_ALL, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47, %33
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %160

58:                                               ; preds = %47
  %59 = load %struct.nft_fib*, %struct.nft_fib** %8, align 8
  %60 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NFTA_FIB_F_SADDR, align 4
  %63 = load i32, i32* @NFTA_FIB_F_DADDR, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = load i32, i32* @NFTA_FIB_F_SADDR, align 4
  %67 = load i32, i32* @NFTA_FIB_F_DADDR, align 4
  %68 = or i32 %66, %67
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %160

73:                                               ; preds = %58
  %74 = load %struct.nft_fib*, %struct.nft_fib** %8, align 8
  %75 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @NFTA_FIB_F_IIF, align 4
  %78 = load i32, i32* @NFTA_FIB_F_OIF, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = load i32, i32* @NFTA_FIB_F_IIF, align 4
  %82 = load i32, i32* @NFTA_FIB_F_OIF, align 4
  %83 = or i32 %81, %82
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %73
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %160

88:                                               ; preds = %73
  %89 = load %struct.nft_fib*, %struct.nft_fib** %8, align 8
  %90 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NFTA_FIB_F_SADDR, align 4
  %93 = load i32, i32* @NFTA_FIB_F_DADDR, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %160

100:                                              ; preds = %88
  %101 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %102 = load i64, i64* @NFTA_FIB_RESULT, align 8
  %103 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %101, i64 %102
  %104 = load %struct.nlattr*, %struct.nlattr** %103, align 8
  %105 = call i32 @nla_get_be32(%struct.nlattr* %104)
  %106 = call i8* @ntohl(i32 %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.nft_fib*, %struct.nft_fib** %8, align 8
  %109 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %111 = load i64, i64* @NFTA_FIB_DREG, align 8
  %112 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %111
  %113 = load %struct.nlattr*, %struct.nlattr** %112, align 8
  %114 = call i32 @nft_parse_register(%struct.nlattr* %113)
  %115 = load %struct.nft_fib*, %struct.nft_fib** %8, align 8
  %116 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.nft_fib*, %struct.nft_fib** %8, align 8
  %118 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %144 [
    i32 129, label %120
    i32 128, label %131
    i32 130, label %143
  ]

120:                                              ; preds = %100
  %121 = load %struct.nft_fib*, %struct.nft_fib** %8, align 8
  %122 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @NFTA_FIB_F_OIF, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %160

130:                                              ; preds = %120
  store i32 4, i32* %9, align 4
  br label %147

131:                                              ; preds = %100
  %132 = load %struct.nft_fib*, %struct.nft_fib** %8, align 8
  %133 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @NFTA_FIB_F_OIF, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %160

141:                                              ; preds = %131
  %142 = load i32, i32* @IFNAMSIZ, align 4
  store i32 %142, i32* %9, align 4
  br label %147

143:                                              ; preds = %100
  store i32 4, i32* %9, align 4
  br label %147

144:                                              ; preds = %100
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %160

147:                                              ; preds = %143, %141, %130
  %148 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %149 = load %struct.nft_fib*, %struct.nft_fib** %8, align 8
  %150 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @NFT_DATA_VALUE, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @nft_validate_register_store(%struct.nft_ctx* %148, i32 %151, i32* null, i32 %152, i32 %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %147
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %4, align 4
  br label %160

159:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %159, %157, %144, %138, %127, %97, %85, %70, %55, %30
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local %struct.nft_fib* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_store(%struct.nft_ctx*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
