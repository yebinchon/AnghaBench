; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_upcall_msg_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_upcall_msg_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp_upcall_info = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dp_upcall_info*, i32, i32)* @upcall_msg_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @upcall_msg_size(%struct.dp_upcall_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dp_upcall_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.dp_upcall_info* %0, %struct.dp_upcall_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i64 @NLMSG_ALIGN(i32 4)
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @nla_total_size(i32 %9)
  %11 = add i64 %8, %10
  %12 = call i32 (...) @ovs_key_attr_size()
  %13 = call i64 @nla_total_size(i32 %12)
  %14 = add i64 %11, %13
  %15 = call i64 @nla_total_size(i32 4)
  %16 = add i64 %14, %15
  store i64 %16, i64* %7, align 8
  %17 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %4, align 8
  %18 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %4, align 8
  %23 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @NLA_ALIGN(i32 %26)
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %21, %3
  %31 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %4, align 8
  %32 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = call i32 (...) @ovs_tun_key_attr_size()
  %37 = call i64 @nla_total_size(i32 %36)
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %4, align 8
  %42 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @nla_total_size(i32 %46)
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %4, align 8
  %52 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = call i64 @nla_total_size(i32 8)
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i64, i64* %7, align 8
  ret i64 %60
}

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i32 @ovs_key_attr_size(...) #1

declare dso_local i64 @NLA_ALIGN(i32) #1

declare dso_local i32 @ovs_tun_key_attr_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
