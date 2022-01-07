; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_get_num_data_items.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_get_num_data_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_request = type { i64, %struct.ceph_osd_req_op* }
%struct.ceph_osd_req_op = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_request*, i32*, i32*)* @get_num_data_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_num_data_items(%struct.ceph_osd_request* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ceph_osd_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ceph_osd_req_op*, align 8
  store %struct.ceph_osd_request* %0, %struct.ceph_osd_request** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %11 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %10, i32 0, i32 1
  %12 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %11, align 8
  store %struct.ceph_osd_req_op* %12, %struct.ceph_osd_req_op** %7, align 8
  br label %13

13:                                               ; preds = %59, %3
  %14 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %15 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %16 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %15, i32 0, i32 1
  %17 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %16, align 8
  %18 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %4, align 8
  %19 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %17, i64 %20
  %22 = icmp ne %struct.ceph_osd_req_op* %14, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %13
  %24 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %25 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %49 [
    i32 129, label %27
    i32 128, label %27
    i32 131, label %27
    i32 137, label %27
    i32 133, label %27
    i32 136, label %27
    i32 130, label %31
    i32 132, label %31
    i32 135, label %31
    i32 134, label %35
    i32 138, label %42
  ]

27:                                               ; preds = %23, %23, %23, %23, %23, %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %58

31:                                               ; preds = %23, %23, %23
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %58

35:                                               ; preds = %23
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %58

42:                                               ; preds = %23
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 2
  store i32 %45, i32* %43, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %58

49:                                               ; preds = %23
  %50 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %51 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @osd_req_opcode_valid(i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @WARN_ON(i32 %56)
  br label %58

58:                                               ; preds = %49, %42, %35, %31, %27
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.ceph_osd_req_op*, %struct.ceph_osd_req_op** %7, align 8
  %61 = getelementptr inbounds %struct.ceph_osd_req_op, %struct.ceph_osd_req_op* %60, i32 1
  store %struct.ceph_osd_req_op* %61, %struct.ceph_osd_req_op** %7, align 8
  br label %13

62:                                               ; preds = %13
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @osd_req_opcode_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
