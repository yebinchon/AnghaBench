; ModuleID = '/home/carl/AnghaBench/linux/net/dns_resolver/extr_dns_key.c_dns_resolver_describe.c'
source_filename = "/home/carl/AnghaBench/linux/net/dns_resolver/extr_dns_key.c_dns_resolver_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.seq_file = type { i32 }

@dns_key_error = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c": %d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c": %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key*, %struct.seq_file*)* @dns_resolver_describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dns_resolver_describe(%struct.key* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %7 = load %struct.key*, %struct.key** %3, align 8
  %8 = getelementptr inbounds %struct.key, %struct.key* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @seq_puts(%struct.seq_file* %6, i32 %9)
  %11 = load %struct.key*, %struct.key** %3, align 8
  %12 = call i64 @key_is_positive(%struct.key* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load %struct.key*, %struct.key** %3, align 8
  %16 = getelementptr inbounds %struct.key, %struct.key* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @dns_key_error, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PTR_ERR(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %35

29:                                               ; preds = %14
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = load %struct.key*, %struct.key** %3, align 8
  %32 = getelementptr inbounds %struct.key, %struct.key* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %25
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i32) #1

declare dso_local i64 @key_is_positive(%struct.key*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
