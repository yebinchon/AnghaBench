; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_for_each_transport.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_for_each_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type opaque
%struct.net = type { i32 }
%struct.rhashtable_iter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_for_each_transport(i32 (%struct.sctp_transport*, i8*)* %0, i32 (%struct.sctp_transport*, i8*)* %1, %struct.net* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32 (%struct.sctp_transport*, i8*)*, align 8
  %7 = alloca i32 (%struct.sctp_transport*, i8*)*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.rhashtable_iter, align 4
  %12 = alloca %struct.sctp_transport*, align 8
  %13 = alloca i32, align 4
  store i32 (%struct.sctp_transport*, i8*)* %0, i32 (%struct.sctp_transport*, i8*)** %6, align 8
  store i32 (%struct.sctp_transport*, i8*)* %1, i32 (%struct.sctp_transport*, i8*)** %7, align 8
  store %struct.net* %2, %struct.net** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  br label %14

14:                                               ; preds = %56, %5
  store i32 0, i32* %13, align 4
  %15 = call i32 @sctp_transport_walk_start(%struct.rhashtable_iter* %11)
  %16 = load %struct.net*, %struct.net** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  %20 = call %struct.sctp_transport* @sctp_transport_get_idx(%struct.net* %16, %struct.rhashtable_iter* %11, i32 %19)
  store %struct.sctp_transport* %20, %struct.sctp_transport** %12, align 8
  br label %21

21:                                               ; preds = %40, %14
  %22 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %23 = call i32 @IS_ERR_OR_NULL(%struct.sctp_transport* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load i32 (%struct.sctp_transport*, i8*)*, i32 (%struct.sctp_transport*, i8*)** %6, align 8
  %28 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 %27(%struct.sctp_transport* %28, i8* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %43

34:                                               ; preds = %26
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %39 = call i32 @sctp_transport_put(%struct.sctp_transport* %38)
  br label %40

40:                                               ; preds = %34
  %41 = load %struct.net*, %struct.net** %8, align 8
  %42 = call %struct.sctp_transport* @sctp_transport_get_next(%struct.net* %41, %struct.rhashtable_iter* %11)
  store %struct.sctp_transport* %42, %struct.sctp_transport** %12, align 8
  br label %21

43:                                               ; preds = %33, %21
  %44 = call i32 @sctp_transport_walk_stop(%struct.rhashtable_iter* %11)
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load i32 (%struct.sctp_transport*, i8*)*, i32 (%struct.sctp_transport*, i8*)** %7, align 8
  %49 = icmp ne i32 (%struct.sctp_transport*, i8*)* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i32 (%struct.sctp_transport*, i8*)*, i32 (%struct.sctp_transport*, i8*)** %7, align 8
  %52 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 %51(%struct.sctp_transport* %52, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %61 = call i32 @sctp_transport_put(%struct.sctp_transport* %60)
  br label %14

62:                                               ; preds = %50, %47
  %63 = load %struct.sctp_transport*, %struct.sctp_transport** %12, align 8
  %64 = call i32 @sctp_transport_put(%struct.sctp_transport* %63)
  br label %65

65:                                               ; preds = %62, %43
  %66 = load i32, i32* %13, align 4
  ret i32 %66
}

declare dso_local i32 @sctp_transport_walk_start(%struct.rhashtable_iter*) #1

declare dso_local %struct.sctp_transport* @sctp_transport_get_idx(%struct.net*, %struct.rhashtable_iter*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.sctp_transport*) #1

declare dso_local i32 @sctp_transport_put(%struct.sctp_transport*) #1

declare dso_local %struct.sctp_transport* @sctp_transport_get_next(%struct.net*, %struct.rhashtable_iter*) #1

declare dso_local i32 @sctp_transport_walk_stop(%struct.rhashtable_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
