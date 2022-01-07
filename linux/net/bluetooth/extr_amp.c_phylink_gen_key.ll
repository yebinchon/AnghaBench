; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_phylink_gen_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_phylink_gen_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.link_key = type { i32* }

@HCI_AMP_LINK_KEY_SIZE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"conn %p key_type %d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"legacy key type %d\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"No Link key for conn %p dst %pMR\00", align 1
@HCI_LINK_KEY_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"gamp\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"could not derive Generic AMP Key: err %d\00", align 1
@HCI_LK_DEBUG_COMBINATION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Use Generic AMP Key (gamp)\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"802b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phylink_gen_key(%struct.hci_conn* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca %struct.link_key*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hci_conn* %0, %struct.hci_conn** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %18 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %17, i32 0, i32 2
  %19 = load %struct.hci_dev*, %struct.hci_dev** %18, align 8
  store %struct.hci_dev* %19, %struct.hci_dev** %10, align 8
  %20 = load i32, i32* @HCI_AMP_LINK_KEY_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @HCI_AMP_LINK_KEY_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %27 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %28 = call i32 @hci_conn_check_link_mode(%struct.hci_conn* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @EACCES, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %112

33:                                               ; preds = %4
  %34 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %35 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %36 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %34, i32 %37)
  %39 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %40 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %51

43:                                               ; preds = %33
  %44 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %45 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %46 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @bt_dev_err(%struct.hci_dev* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EACCES, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %112

51:                                               ; preds = %33
  %52 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %53 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @HCI_AMP_LINK_KEY_SIZE, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %59 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %60 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %59, i32 0, i32 1
  %61 = call %struct.link_key* @hci_find_link_key(%struct.hci_dev* %58, i32* %60)
  store %struct.link_key* %61, %struct.link_key** %11, align 8
  %62 = load %struct.link_key*, %struct.link_key** %11, align 8
  %63 = icmp ne %struct.link_key* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %51
  %65 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %66 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %67 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %66, i32 0, i32 1
  %68 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.hci_conn* %65, i32* %67)
  %69 = load i32, i32* @EACCES, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %112

71:                                               ; preds = %51
  %72 = getelementptr inbounds i32, i32* %23, i64 0
  %73 = load %struct.link_key*, %struct.link_key** %11, align 8
  %74 = getelementptr inbounds %struct.link_key, %struct.link_key* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @HCI_LINK_KEY_SIZE, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memcpy(i32* %72, i32* %75, i32 %77)
  %79 = load i64, i64* @HCI_LINK_KEY_SIZE, align 8
  %80 = getelementptr inbounds i32, i32* %23, i64 %79
  %81 = load %struct.link_key*, %struct.link_key** %11, align 8
  %82 = getelementptr inbounds %struct.link_key, %struct.link_key* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @HCI_LINK_KEY_SIZE, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memcpy(i32* %80, i32* %83, i32 %85)
  %87 = load i32, i32* @HCI_AMP_LINK_KEY_SIZE, align 4
  %88 = call i32 @hmac_sha256(i32* %23, i32 %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4, i32* %26)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %71
  %92 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @bt_dev_err(%struct.hci_dev* %92, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %112

96:                                               ; preds = %71
  %97 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %98 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @HCI_LK_DEBUG_COMBINATION, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* @HCI_AMP_LINK_KEY_SIZE, align 4
  %106 = call i32 @memcpy(i32* %104, i32* %26, i32 %105)
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %112

108:                                              ; preds = %96
  %109 = load i32, i32* @HCI_AMP_LINK_KEY_SIZE, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @hmac_sha256(i32* %26, i32 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4, i32* %110)
  store i32 %111, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %112

112:                                              ; preds = %108, %102, %91, %64, %43, %30
  %113 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hci_conn_check_link_mode(%struct.hci_conn*) #2

declare dso_local i32 @BT_DBG(i8*, ...) #2

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #2

declare dso_local %struct.link_key* @hci_find_link_key(%struct.hci_dev*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @hmac_sha256(i32*, i32, i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
