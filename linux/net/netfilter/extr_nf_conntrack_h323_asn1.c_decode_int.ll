; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_asn1.c_decode_int.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_asn1.c_decode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitstr = type { i32 }
%struct.field_t = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%*.s%s\00", align 1
@TAB_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@H323_ERROR_BOUND = common dso_local global i32 0, align 4
@DECODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@H323_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitstr*, %struct.field_t*, i8*, i32)* @decode_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_int(%struct.bitstr* %0, %struct.field_t* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitstr*, align 8
  %7 = alloca %struct.field_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bitstr* %0, %struct.bitstr** %6, align 8
  store %struct.field_t* %1, %struct.field_t** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @TAB_SIZE, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load %struct.field_t*, %struct.field_t** %7, align 8
  %16 = getelementptr inbounds %struct.field_t, %struct.field_t* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @PRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.field_t*, %struct.field_t** %7, align 8
  %20 = getelementptr inbounds %struct.field_t, %struct.field_t* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %97 [
    i32 131, label %22
    i32 128, label %29
    i32 130, label %36
    i32 129, label %81
  ]

22:                                               ; preds = %4
  %23 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %24 = call i32 @BYTE_ALIGN(%struct.bitstr* %23)
  %25 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %26 = getelementptr inbounds %struct.bitstr, %struct.bitstr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %103

29:                                               ; preds = %4
  %30 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %31 = call i32 @BYTE_ALIGN(%struct.bitstr* %30)
  %32 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %33 = getelementptr inbounds %struct.bitstr, %struct.bitstr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 2
  store i32 %35, i32* %33, align 4
  br label %103

36:                                               ; preds = %4
  %37 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %38 = call i64 @nf_h323_error_boundary(%struct.bitstr* %37, i32 0, i32 2)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @H323_ERROR_BOUND, align 4
  store i32 %41, i32* %5, align 4
  br label %112

42:                                               ; preds = %36
  %43 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %44 = call i32 @get_bits(%struct.bitstr* %43, i32 2)
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  %46 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %47 = call i32 @BYTE_ALIGN(%struct.bitstr* %46)
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %75

50:                                               ; preds = %42
  %51 = load %struct.field_t*, %struct.field_t** %7, align 8
  %52 = getelementptr inbounds %struct.field_t, %struct.field_t* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DECODE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %50
  %58 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @get_uint(%struct.bitstr* %58, i32 %59)
  %61 = load %struct.field_t*, %struct.field_t** %7, align 8
  %62 = getelementptr inbounds %struct.field_t, %struct.field_t* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %60, %63
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 (i8*, ...) @PRINT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.field_t*, %struct.field_t** %7, align 8
  %70 = getelementptr inbounds %struct.field_t, %struct.field_t* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  %74 = bitcast i8* %73 to i32*
  store i32 %67, i32* %74, align 4
  br label %75

75:                                               ; preds = %57, %50, %42
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %78 = getelementptr inbounds %struct.bitstr, %struct.bitstr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %103

81:                                               ; preds = %4
  %82 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %83 = call i32 @BYTE_ALIGN(%struct.bitstr* %82)
  %84 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %85 = call i64 @nf_h323_error_boundary(%struct.bitstr* %84, i32 2, i32 0)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @H323_ERROR_BOUND, align 4
  store i32 %88, i32* %5, align 4
  br label %112

89:                                               ; preds = %81
  %90 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %91 = call i32 @get_len(%struct.bitstr* %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %94 = getelementptr inbounds %struct.bitstr, %struct.bitstr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %103

97:                                               ; preds = %4
  %98 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %99 = load %struct.field_t*, %struct.field_t** %7, align 8
  %100 = getelementptr inbounds %struct.field_t, %struct.field_t* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @INC_BITS(%struct.bitstr* %98, i32 %101)
  br label %103

103:                                              ; preds = %97, %89, %75, %29, %22
  %104 = call i32 (i8*, ...) @PRINT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %106 = call i64 @nf_h323_error_boundary(%struct.bitstr* %105, i32 0, i32 0)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @H323_ERROR_BOUND, align 4
  store i32 %109, i32* %5, align 4
  br label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @H323_ERROR_NONE, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %108, %87, %40
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @PRINT(i8*, ...) #1

declare dso_local i32 @BYTE_ALIGN(%struct.bitstr*) #1

declare dso_local i64 @nf_h323_error_boundary(%struct.bitstr*, i32, i32) #1

declare dso_local i32 @get_bits(%struct.bitstr*, i32) #1

declare dso_local i32 @get_uint(%struct.bitstr*, i32) #1

declare dso_local i32 @get_len(%struct.bitstr*) #1

declare dso_local i32 @INC_BITS(%struct.bitstr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
