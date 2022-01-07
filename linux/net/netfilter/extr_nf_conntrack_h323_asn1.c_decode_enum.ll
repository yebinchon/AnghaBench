; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_asn1.c_decode_enum.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_asn1.c_decode_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitstr = type { i32 }
%struct.field_t = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%*.s%s\0A\00", align 1
@TAB_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@EXT = common dso_local global i32 0, align 4
@H323_ERROR_BOUND = common dso_local global i32 0, align 4
@H323_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bitstr*, %struct.field_t*, i8*, i32)* @decode_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_enum(%struct.bitstr* %0, %struct.field_t* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitstr*, align 8
  %7 = alloca %struct.field_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.bitstr* %0, %struct.bitstr** %6, align 8
  store %struct.field_t* %1, %struct.field_t** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TAB_SIZE, align 4
  %12 = mul nsw i32 %10, %11
  %13 = load %struct.field_t*, %struct.field_t** %7, align 8
  %14 = getelementptr inbounds %struct.field_t, %struct.field_t* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PRINT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load %struct.field_t*, %struct.field_t** %7, align 8
  %18 = getelementptr inbounds %struct.field_t, %struct.field_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EXT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %25 = call i64 @get_bit(%struct.bitstr* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %29 = call i32 @INC_BITS(%struct.bitstr* %28, i32 7)
  br label %36

30:                                               ; preds = %23, %4
  %31 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %32 = load %struct.field_t*, %struct.field_t** %7, align 8
  %33 = getelementptr inbounds %struct.field_t, %struct.field_t* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @INC_BITS(%struct.bitstr* %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %27
  %37 = load %struct.bitstr*, %struct.bitstr** %6, align 8
  %38 = call i64 @nf_h323_error_boundary(%struct.bitstr* %37, i32 0, i32 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @H323_ERROR_BOUND, align 4
  store i32 %41, i32* %5, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @H323_ERROR_NONE, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @PRINT(i8*, i32, i8*, i32) #1

declare dso_local i64 @get_bit(%struct.bitstr*) #1

declare dso_local i32 @INC_BITS(%struct.bitstr*, i32) #1

declare dso_local i64 @nf_h323_error_boundary(%struct.bitstr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
