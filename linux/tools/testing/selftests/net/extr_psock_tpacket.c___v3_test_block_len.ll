; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c___v3_test_block_len.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c___v3_test_block_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"\0Ablock:%u with %upackets, expected len:%u != actual len:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.block_desc*, i64, i32)* @__v3_test_block_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__v3_test_block_len(%struct.block_desc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.block_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.block_desc* %0, %struct.block_desc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.block_desc*, %struct.block_desc** %4, align 8
  %8 = getelementptr inbounds %struct.block_desc, %struct.block_desc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.block_desc*, %struct.block_desc** %4, align 8
  %15 = getelementptr inbounds %struct.block_desc, %struct.block_desc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %13, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %12
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.block_desc*, %struct.block_desc** %4, align 8
  %23 = getelementptr inbounds %struct.block_desc, %struct.block_desc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.block_desc*, %struct.block_desc** %4, align 8
  %28 = getelementptr inbounds %struct.block_desc, %struct.block_desc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i64 %26, i64 %30)
  %32 = call i32 @exit(i32 1) #3
  unreachable

33:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i64, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
