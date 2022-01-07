; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_print_ip.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_print_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_ipaddr_union = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tomoyo_print_ip(i8* %0, i32 %1, %struct.tomoyo_ipaddr_union* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tomoyo_ipaddr_union*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tomoyo_ipaddr_union* %2, %struct.tomoyo_ipaddr_union** %6, align 8
  %7 = load %struct.tomoyo_ipaddr_union*, %struct.tomoyo_ipaddr_union** %6, align 8
  %8 = getelementptr inbounds %struct.tomoyo_ipaddr_union, %struct.tomoyo_ipaddr_union* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.tomoyo_ipaddr_union*, %struct.tomoyo_ipaddr_union** %6, align 8
  %15 = getelementptr inbounds %struct.tomoyo_ipaddr_union, %struct.tomoyo_ipaddr_union* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 0
  %18 = load %struct.tomoyo_ipaddr_union*, %struct.tomoyo_ipaddr_union** %6, align 8
  %19 = getelementptr inbounds %struct.tomoyo_ipaddr_union, %struct.tomoyo_ipaddr_union* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 1
  %22 = call i32 @tomoyo_print_ipv6(i8* %12, i32 %13, %struct.TYPE_3__* %17, %struct.TYPE_3__* %21)
  br label %41

23:                                               ; preds = %3
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.tomoyo_ipaddr_union*, %struct.tomoyo_ipaddr_union** %6, align 8
  %27 = getelementptr inbounds %struct.tomoyo_ipaddr_union, %struct.tomoyo_ipaddr_union* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load %struct.tomoyo_ipaddr_union*, %struct.tomoyo_ipaddr_union** %6, align 8
  %34 = getelementptr inbounds %struct.tomoyo_ipaddr_union, %struct.tomoyo_ipaddr_union* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i32 @tomoyo_print_ipv4(i8* %24, i32 %25, i32* %32, i32* %39)
  br label %41

41:                                               ; preds = %23, %11
  ret void
}

declare dso_local i32 @tomoyo_print_ipv6(i8*, i32, %struct.TYPE_3__*, %struct.TYPE_3__*) #1

declare dso_local i32 @tomoyo_print_ipv4(i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
