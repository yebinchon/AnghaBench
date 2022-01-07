; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_sack_extend.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_sack_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sack_block = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_sack_block*, i8*, i8*)* @tcp_sack_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_sack_extend(%struct.tcp_sack_block* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_sack_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.tcp_sack_block* %0, %struct.tcp_sack_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %5, align 8
  %10 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @after(i8* %8, i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %3
  %15 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %5, align 8
  %16 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @after(i8* %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %14
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %5, align 8
  %24 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @before(i8* %22, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %5, align 8
  %31 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %28, %21
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %5, align 8
  %35 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @after(i8* %33, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %5, align 8
  %42 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %39, %32
  store i32 1, i32* %4, align 4
  br label %45

44:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @after(i8*, i8*) #1

declare dso_local i64 @before(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
