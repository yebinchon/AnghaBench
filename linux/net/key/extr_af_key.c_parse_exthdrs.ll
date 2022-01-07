; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_parse_exthdrs.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_parse_exthdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32 }
%struct.sadb_ext = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SADB_EXT_RESERVED = common dso_local global i64 0, align 8
@SADB_EXT_MAX = common dso_local global i64 0, align 8
@sadb_ext_min_len = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sadb_msg*, i8**)* @parse_exthdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_exthdrs(%struct.sk_buff* %0, %struct.sadb_msg* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sadb_msg*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sadb_ext*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sadb_msg* %1, %struct.sadb_msg** %6, align 8
  store i8** %2, i8*** %7, align 8
  %14 = load %struct.sadb_msg*, %struct.sadb_msg** %6, align 8
  %15 = bitcast %struct.sadb_msg* %14 to i8*
  store i8* %15, i8** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 4
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %121, %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %129

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to %struct.sadb_ext*
  store %struct.sadb_ext* %30, %struct.sadb_ext** %10, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 16
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %130

37:                                               ; preds = %28
  %38 = load %struct.sadb_ext*, %struct.sadb_ext** %10, align 8
  %39 = getelementptr inbounds %struct.sadb_ext, %struct.sadb_ext* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load %struct.sadb_ext*, %struct.sadb_ext** %10, align 8
  %46 = getelementptr inbounds %struct.sadb_ext, %struct.sadb_ext* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 4
  br i1 %50, label %59, label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @SADB_EXT_RESERVED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %51, %37
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %130

62:                                               ; preds = %55
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @SADB_EXT_MAX, align 8
  %65 = icmp ule i64 %63, %64
  br i1 %65, label %66, label %121

66:                                               ; preds = %62
  %67 = load i64*, i64** @sadb_ext_min_len, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %130

78:                                               ; preds = %66
  %79 = load i8**, i8*** %7, align 8
  %80 = load i64, i64* %11, align 8
  %81 = sub i64 %80, 1
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %130

88:                                               ; preds = %78
  %89 = load i64, i64* %11, align 8
  switch i64 %89, label %114 [
    i64 132, label %90
    i64 134, label %90
    i64 133, label %90
    i64 129, label %90
    i64 128, label %98
    i64 131, label %106
    i64 130, label %106
  ]

90:                                               ; preds = %88, %88, %88, %88
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @verify_address_len(i8* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %130

97:                                               ; preds = %90
  br label %115

98:                                               ; preds = %88
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @verify_sec_ctx_len(i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %130

105:                                              ; preds = %98
  br label %115

106:                                              ; preds = %88, %88
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @verify_key_len(i8* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %130

113:                                              ; preds = %106
  br label %115

114:                                              ; preds = %88
  br label %115

115:                                              ; preds = %114, %113, %105, %97
  %116 = load i8*, i8** %8, align 8
  %117 = load i8**, i8*** %7, align 8
  %118 = load i64, i64* %11, align 8
  %119 = sub i64 %118, 1
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  store i8* %116, i8** %120, align 8
  br label %121

121:                                              ; preds = %115, %62
  %122 = load i32, i32* %12, align 4
  %123 = load i8*, i8** %8, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %8, align 8
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %9, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %9, align 4
  br label %25

129:                                              ; preds = %25
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %110, %102, %94, %85, %75, %59, %34
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @verify_address_len(i8*) #1

declare dso_local i32 @verify_sec_ctx_len(i8*) #1

declare dso_local i32 @verify_key_len(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
