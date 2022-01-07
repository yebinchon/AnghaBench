; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_wrap.c_gss_krb5_remove_padding.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_wrap.c_gss_krb5_remove_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i64, i64, i64, %struct.TYPE_4__*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_buf*, i32)* @gss_krb5_remove_padding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_krb5_remove_padding(%struct.xdr_buf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xdr_buf* %0, %struct.xdr_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %12 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %16 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %15, i32 0, i32 5
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ule i64 %14, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %2
  %23 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %24 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %23, i32 0, i32 5
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %28, %29
  %31 = sub i64 %30, 1
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %37 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %36, i32 0, i32 5
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %35, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %22
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %160

46:                                               ; preds = %22
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %50 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %49, i32 0, i32 5
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, %48
  store i64 %55, i64* %53, align 8
  br label %135

56:                                               ; preds = %2
  %57 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %58 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %57, i32 0, i32 5
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = sub i64 %63, %62
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %56
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %68 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ule i64 %66, %69
  br i1 %70, label %71, label %107

71:                                               ; preds = %65
  %72 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %73 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %74, %75
  %77 = sub i64 %76, 1
  %78 = load i64, i64* @PAGE_SHIFT, align 8
  %79 = lshr i64 %77, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %9, align 4
  %81 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %82 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %83, %84
  %86 = sub i64 %85, 1
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = and i64 %86, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %10, align 4
  %92 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %93 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32* @kmap_atomic(i32 %98)
  store i32* %99, i32** %6, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %7, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @kunmap_atomic(i32* %105)
  br label %135

107:                                              ; preds = %65
  %108 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %109 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = sub i64 %111, %110
  store i64 %112, i64* %8, align 8
  br label %113

113:                                              ; preds = %107
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %116 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %115, i32 0, i32 3
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ugt i64 %114, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @BUG_ON(i32 %122)
  %124 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %125 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %124, i32 0, i32 3
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %8, align 8
  %131 = add i64 %129, %130
  %132 = sub i64 %131, 1
  %133 = inttoptr i64 %132 to i32*
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %113, %71, %46
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %160

142:                                              ; preds = %135
  %143 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %144 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp ugt i64 %145, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %142
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = load %struct.xdr_buf*, %struct.xdr_buf** %4, align 8
  %153 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = sub i64 %154, %151
  store i64 %155, i64* %153, align 8
  br label %159

156:                                              ; preds = %142
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %160

159:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %159, %156, %139, %43
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32* @kmap_atomic(i32) #1

declare dso_local i32 @kunmap_atomic(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
