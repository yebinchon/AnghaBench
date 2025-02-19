; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_asn1.c_decode_numstr.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_asn1.c_decode_numstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitstr = type { i32 }
%struct.field_t = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%*.s%s\0A\00", align 1
@TAB_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@H323_ERROR_BOUND = common dso_local global i32 0, align 4
@H323_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitstr*, %struct.field_t*, i8*, i32)* @decode_numstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_numstr(%struct.bitstr* %0, %struct.field_t* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitstr*, align 8
  %7 = alloca %struct.field_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bitstr* %0, %struct.bitstr** %6, align 8
  store %struct.field_t* %1, %struct.field_t** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @TAB_SIZE, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load %struct.field_t*, %struct.field_t** %7, align 8
  %15 = getelementptr inbounds %struct.field_t, %struct.field_t* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @PRINT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %19 = load %struct.field_t*, %struct.field_t** %7, align 8
  %20 = getelementptr inbounds %struct.field_t, %struct.field_t* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @nf_h323_error_boundary(%struct.bitstr* %18, i32 0, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @H323_ERROR_BOUND, align 4
  store i32 %25, i32* %5, align 4
  br label %49

26:                                               ; preds = %4
  %27 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %28 = load %struct.field_t*, %struct.field_t** %7, align 8
  %29 = getelementptr inbounds %struct.field_t, %struct.field_t* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @get_bits(%struct.bitstr* %27, i32 %30)
  %32 = load %struct.field_t*, %struct.field_t** %7, align 8
  %33 = getelementptr inbounds %struct.field_t, %struct.field_t* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %31, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %37 = call i32 @BYTE_ALIGN(%struct.bitstr* %36)
  %38 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = shl i32 %39, 2
  %41 = call i32 @INC_BITS(%struct.bitstr* %38, i32 %40)
  %42 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %43 = call i64 @nf_h323_error_boundary(%struct.bitstr* %42, i32 0, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %26
  %46 = load i32, i32* @H323_ERROR_BOUND, align 4
  store i32 %46, i32* %5, align 4
  br label %49

47:                                               ; preds = %26
  %48 = load i32, i32* @H323_ERROR_NONE, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %45, %24
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @PRINT(i8*, i32, i8*, i32) #1

declare dso_local i64 @nf_h323_error_boundary(%struct.bitstr*, i32, i32) #1

declare dso_local i32 @get_bits(%struct.bitstr*, i32) #1

declare dso_local i32 @BYTE_ALIGN(%struct.bitstr*) #1

declare dso_local i32 @INC_BITS(%struct.bitstr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
