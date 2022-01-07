; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_read_op.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_read_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.bcm_msg_head = type { i32, i32, i32, i32, i32 }
%struct.bcm_op = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MHSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, %struct.bcm_msg_head*, i32)* @bcm_read_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_read_op(%struct.list_head* %0, %struct.bcm_msg_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.bcm_msg_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcm_op*, align 8
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store %struct.bcm_msg_head* %1, %struct.bcm_msg_head** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.list_head*, %struct.list_head** %5, align 8
  %10 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.bcm_op* @bcm_find_op(%struct.list_head* %9, %struct.bcm_msg_head* %10, i32 %11)
  store %struct.bcm_op* %12, %struct.bcm_op** %8, align 8
  %13 = load %struct.bcm_op*, %struct.bcm_op** %8, align 8
  %14 = icmp ne %struct.bcm_op* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %51

18:                                               ; preds = %3
  %19 = load %struct.bcm_op*, %struct.bcm_op** %8, align 8
  %20 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %6, align 8
  %23 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bcm_op*, %struct.bcm_op** %8, align 8
  %25 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %6, align 8
  %28 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.bcm_op*, %struct.bcm_op** %8, align 8
  %30 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %6, align 8
  %33 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bcm_op*, %struct.bcm_op** %8, align 8
  %35 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %6, align 8
  %38 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.bcm_op*, %struct.bcm_op** %8, align 8
  %40 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %6, align 8
  %43 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.bcm_op*, %struct.bcm_op** %8, align 8
  %45 = load %struct.bcm_msg_head*, %struct.bcm_msg_head** %6, align 8
  %46 = load %struct.bcm_op*, %struct.bcm_op** %8, align 8
  %47 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bcm_send_to_user(%struct.bcm_op* %44, %struct.bcm_msg_head* %45, i32 %48, i32 0)
  %50 = load i32, i32* @MHSIZ, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %18, %15
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.bcm_op* @bcm_find_op(%struct.list_head*, %struct.bcm_msg_head*, i32) #1

declare dso_local i32 @bcm_send_to_user(%struct.bcm_op*, %struct.bcm_msg_head*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
