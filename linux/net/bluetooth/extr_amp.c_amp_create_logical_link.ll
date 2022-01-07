; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_create_logical_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_amp_create_logical_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hci_conn*, %struct.TYPE_6__* }
%struct.hci_conn = type { i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.hci_cp_create_accept_logical_link = type { %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i32, i32 }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"chan %p hs_hcon %p dst %pMR\00", align 1
@HCI_OP_CREATE_LOGICAL_LINK = common dso_local global i32 0, align 4
@HCI_OP_ACCEPT_LOGICAL_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amp_create_logical_link(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca %struct.hci_cp_create_accept_logical_link, align 8
  %5 = alloca %struct.hci_dev*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %7 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %6, i32 0, i32 12
  %8 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  store %struct.hci_conn* %8, %struct.hci_conn** %3, align 8
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %10 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %12 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %11, i32 0, i32 13
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %9, %struct.hci_conn* %10, i32* %16)
  %18 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %19 = icmp ne %struct.hci_conn* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %119

21:                                               ; preds = %1
  %22 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %23 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %22, i32 0, i32 12
  %24 = load %struct.hci_conn*, %struct.hci_conn** %23, align 8
  %25 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.hci_dev* @hci_dev_hold(i32 %26)
  store %struct.hci_dev* %27, %struct.hci_dev** %5, align 8
  %28 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %29 = icmp ne %struct.hci_dev* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %119

31:                                               ; preds = %21
  %32 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %33 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, %struct.hci_cp_create_accept_logical_link* %4, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %37 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, %struct.hci_cp_create_accept_logical_link* %4, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %42 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, %struct.hci_cp_create_accept_logical_link* %4, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %47 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, %struct.hci_cp_create_accept_logical_link* %4, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %53 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, %struct.hci_cp_create_accept_logical_link* %4, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %59 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, %struct.hci_cp_create_accept_logical_link* %4, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %65 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, %struct.hci_cp_create_accept_logical_link* %4, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %71 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, %struct.hci_cp_create_accept_logical_link* %4, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %76 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, %struct.hci_cp_create_accept_logical_link* %4, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %81 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @cpu_to_le16(i32 %82)
  %84 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, %struct.hci_cp_create_accept_logical_link* %4, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %87 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @cpu_to_le32(i32 %88)
  %90 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, %struct.hci_cp_create_accept_logical_link* %4, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %93 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @cpu_to_le32(i32 %94)
  %96 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, %struct.hci_cp_create_accept_logical_link* %4, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %99 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = getelementptr inbounds %struct.hci_cp_create_accept_logical_link, %struct.hci_cp_create_accept_logical_link* %4, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %105 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %31
  %109 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %110 = load i32, i32* @HCI_OP_CREATE_LOGICAL_LINK, align 4
  %111 = call i32 @hci_send_cmd(%struct.hci_dev* %109, i32 %110, i32 88, %struct.hci_cp_create_accept_logical_link* %4)
  br label %116

112:                                              ; preds = %31
  %113 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %114 = load i32, i32* @HCI_OP_ACCEPT_LOGICAL_LINK, align 4
  %115 = call i32 @hci_send_cmd(%struct.hci_dev* %113, i32 %114, i32 88, %struct.hci_cp_create_accept_logical_link* %4)
  br label %116

116:                                              ; preds = %112, %108
  %117 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %118 = call i32 @hci_dev_put(%struct.hci_dev* %117)
  br label %119

119:                                              ; preds = %116, %30, %20
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, %struct.hci_conn*, i32*) #1

declare dso_local %struct.hci_dev* @hci_dev_hold(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_create_accept_logical_link*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
