; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c___v3_test_block_header.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c___v3_test_block_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TP_STATUS_USER = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"\0Ablock %u: not in TP_STATUS_USER\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.block_desc*, i32)* @__v3_test_block_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__v3_test_block_header(%struct.block_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.block_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.block_desc* %0, %struct.block_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.block_desc*, %struct.block_desc** %3, align 8
  %6 = getelementptr inbounds %struct.block_desc, %struct.block_desc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TP_STATUS_USER, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %2
  %18 = load %struct.block_desc*, %struct.block_desc** %3, align 8
  %19 = call i32 @__v3_test_block_seq_num(%struct.block_desc* %18)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @__v3_test_block_seq_num(%struct.block_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
