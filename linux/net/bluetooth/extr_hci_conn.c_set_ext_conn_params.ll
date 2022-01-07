; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_set_ext_conn_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_set_ext_conn_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, i32, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.hci_cp_le_ext_conn_param = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_conn*, %struct.hci_cp_le_ext_conn_param*)* @set_ext_conn_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ext_conn_params(%struct.hci_conn* %0, %struct.hci_cp_le_ext_conn_param* %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca %struct.hci_cp_le_ext_conn_param*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  store %struct.hci_cp_le_ext_conn_param* %1, %struct.hci_cp_le_ext_conn_param** %4, align 8
  %6 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %7 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %6, i32 0, i32 4
  %8 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  store %struct.hci_dev* %8, %struct.hci_dev** %5, align 8
  %9 = load %struct.hci_cp_le_ext_conn_param*, %struct.hci_cp_le_ext_conn_param** %4, align 8
  %10 = call i32 @memset(%struct.hci_cp_le_ext_conn_param* %9, i32 0, i32 64)
  %11 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @cpu_to_le16(i32 %13)
  %15 = load %struct.hci_cp_le_ext_conn_param*, %struct.hci_cp_le_ext_conn_param** %4, align 8
  %16 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, %struct.hci_cp_le_ext_conn_param* %15, i32 0, i32 6
  store i8* %14, i8** %16, align 8
  %17 = load %struct.hci_cp_le_ext_conn_param*, %struct.hci_cp_le_ext_conn_param** %4, align 8
  %18 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, %struct.hci_cp_le_ext_conn_param* %17, i32 0, i32 6
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.hci_cp_le_ext_conn_param*, %struct.hci_cp_le_ext_conn_param** %4, align 8
  %21 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, %struct.hci_cp_le_ext_conn_param* %20, i32 0, i32 7
  store i8* %19, i8** %21, align 8
  %22 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %23 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.hci_cp_le_ext_conn_param*, %struct.hci_cp_le_ext_conn_param** %4, align 8
  %27 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, %struct.hci_cp_le_ext_conn_param* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %29 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = load %struct.hci_cp_le_ext_conn_param*, %struct.hci_cp_le_ext_conn_param** %4, align 8
  %33 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, %struct.hci_cp_le_ext_conn_param* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %35 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = load %struct.hci_cp_le_ext_conn_param*, %struct.hci_cp_le_ext_conn_param** %4, align 8
  %39 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, %struct.hci_cp_le_ext_conn_param* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %41 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.hci_cp_le_ext_conn_param*, %struct.hci_cp_le_ext_conn_param** %4, align 8
  %45 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, %struct.hci_cp_le_ext_conn_param* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = call i8* @cpu_to_le16(i32 0)
  %47 = load %struct.hci_cp_le_ext_conn_param*, %struct.hci_cp_le_ext_conn_param** %4, align 8
  %48 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, %struct.hci_cp_le_ext_conn_param* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = call i8* @cpu_to_le16(i32 0)
  %50 = load %struct.hci_cp_le_ext_conn_param*, %struct.hci_cp_le_ext_conn_param** %4, align 8
  %51 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, %struct.hci_cp_le_ext_conn_param* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  ret void
}

declare dso_local i32 @memset(%struct.hci_cp_le_ext_conn_param*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
