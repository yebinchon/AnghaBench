; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_update_qi.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_update_qi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { i64 }
%struct.mld2_query = type { i32 }

@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet6_dev*, %struct.mld2_query*)* @mld_update_qi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mld_update_qi(%struct.inet6_dev* %0, %struct.mld2_query* %1) #0 {
  %3 = alloca %struct.inet6_dev*, align 8
  %4 = alloca %struct.mld2_query*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %3, align 8
  store %struct.mld2_query* %1, %struct.mld2_query** %4, align 8
  %8 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %9 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %14 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %19 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = call i64 @MLDV2_QQIC_EXP(i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.mld2_query*, %struct.mld2_query** %4, align 8
  %24 = getelementptr inbounds %struct.mld2_query, %struct.mld2_query* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = call i64 @MLDV2_QQIC_MAN(i64 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = or i64 %28, 16
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 3
  %32 = shl i64 %29, %31
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %17, %12
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @HZ, align 8
  %36 = mul i64 %34, %35
  %37 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %38 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  ret void
}

declare dso_local i64 @MLDV2_QQIC_EXP(i64) #1

declare dso_local i64 @MLDV2_QQIC_MAN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
