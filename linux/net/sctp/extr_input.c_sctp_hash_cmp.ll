; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_hash_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_hash_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable_compare_arg = type { %struct.sctp_hash_cmp_arg* }
%struct.sctp_hash_cmp_arg = type { i64, i32, i32 }
%struct.sctp_transport = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rhashtable_compare_arg*, i8*)* @sctp_hash_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_hash_cmp(%struct.rhashtable_compare_arg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rhashtable_compare_arg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sctp_transport*, align 8
  %7 = alloca %struct.sctp_hash_cmp_arg*, align 8
  %8 = alloca i32, align 4
  store %struct.rhashtable_compare_arg* %0, %struct.rhashtable_compare_arg** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sctp_transport*
  store %struct.sctp_transport* %10, %struct.sctp_transport** %6, align 8
  %11 = load %struct.rhashtable_compare_arg*, %struct.rhashtable_compare_arg** %4, align 8
  %12 = getelementptr inbounds %struct.rhashtable_compare_arg, %struct.rhashtable_compare_arg* %11, i32 0, i32 0
  %13 = load %struct.sctp_hash_cmp_arg*, %struct.sctp_hash_cmp_arg** %12, align 8
  store %struct.sctp_hash_cmp_arg* %13, %struct.sctp_hash_cmp_arg** %7, align 8
  store i32 1, i32* %8, align 4
  %14 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %15 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %14, i32 0, i32 1
  %16 = load %struct.sctp_hash_cmp_arg*, %struct.sctp_hash_cmp_arg** %7, align 8
  %17 = getelementptr inbounds %struct.sctp_hash_cmp_arg, %struct.sctp_hash_cmp_arg* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sctp_cmp_addr_exact(i32* %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %62

23:                                               ; preds = %2
  %24 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %25 = call i32 @sctp_transport_hold(%struct.sctp_transport* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %62

29:                                               ; preds = %23
  %30 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %31 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sock_net(i32 %35)
  %37 = load %struct.sctp_hash_cmp_arg*, %struct.sctp_hash_cmp_arg** %7, align 8
  %38 = getelementptr inbounds %struct.sctp_hash_cmp_arg, %struct.sctp_hash_cmp_arg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @net_eq(i32 %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %29
  br label %58

43:                                               ; preds = %29
  %44 = load %struct.sctp_hash_cmp_arg*, %struct.sctp_hash_cmp_arg** %7, align 8
  %45 = getelementptr inbounds %struct.sctp_hash_cmp_arg, %struct.sctp_hash_cmp_arg* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %48 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @htons(i32 %53)
  %55 = icmp ne i64 %46, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %58

57:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %56, %42
  %59 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %60 = call i32 @sctp_transport_put(%struct.sctp_transport* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %27, %21
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @sctp_cmp_addr_exact(i32*, i32) #1

declare dso_local i32 @sctp_transport_hold(%struct.sctp_transport*) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @sctp_transport_put(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
