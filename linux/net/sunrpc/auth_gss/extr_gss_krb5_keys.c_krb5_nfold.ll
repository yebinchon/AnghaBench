; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_keys.c_krb5_nfold.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_keys.c_krb5_nfold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32*)* @krb5_nfold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @krb5_nfold(i32 %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 3
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = ashr i32 %15, 3
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @lcm(i32 %17, i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @memset(i32* %20, i32 0, i32 %21)
  store i32 0, i32* %10, align 4
  %23 = load i64, i64* %9, align 8
  %24 = sub i64 %23, 1
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %100, %4
  %27 = load i32, i32* %11, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %103

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 %30, 3
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 3
  %35 = add nsw i32 %34, 13
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sdiv i32 %36, %37
  %39 = mul nsw i32 %35, %38
  %40 = add nsw i32 %32, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %5, align 4
  %44 = srem i32 %42, %43
  %45 = sub nsw i32 %41, %44
  %46 = shl i32 %45, 3
  %47 = add nsw i32 %40, %46
  %48 = load i32, i32* %5, align 4
  %49 = shl i32 %48, 3
  %50 = srem i32 %47, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* %12, align 4
  %55 = ashr i32 %54, 3
  %56 = sub nsw i32 %53, %55
  %57 = load i32, i32* %5, align 4
  %58 = srem i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %51, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %12, align 4
  %66 = ashr i32 %65, 3
  %67 = sub nsw i32 %64, %66
  %68 = load i32, i32* %5, align 4
  %69 = srem i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %63, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %62, %72
  %74 = load i32, i32* %12, align 4
  %75 = and i32 %74, 7
  %76 = add nsw i32 %75, 1
  %77 = ashr i32 %73, %76
  %78 = and i32 %77, 255
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %10, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %7, align 4
  %84 = srem i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = and i32 %90, 255
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %7, align 4
  %95 = srem i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  store i32 %91, i32* %97, align 4
  %98 = load i32, i32* %10, align 4
  %99 = ashr i32 %98, 8
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %29
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %11, align 4
  br label %26

103:                                              ; preds = %26
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %132

106:                                              ; preds = %103
  %107 = load i32, i32* %7, align 4
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %128, %106
  %110 = load i32, i32* %11, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %109
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = and i32 %120, 255
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* %10, align 4
  %127 = ashr i32 %126, 8
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %112
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %11, align 4
  br label %109

131:                                              ; preds = %109
  br label %132

132:                                              ; preds = %131, %103
  ret void
}

declare dso_local i64 @lcm(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
