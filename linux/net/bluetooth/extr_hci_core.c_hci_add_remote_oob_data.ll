; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_add_remote_oob_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_add_remote_oob_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.oob_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s for %pMR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_add_remote_oob_data(%struct.hci_dev* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hci_dev*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.oob_data*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.oob_data* @hci_find_remote_oob_data(%struct.hci_dev* %17, i32* %18, i32 %19)
  store %struct.oob_data* %20, %struct.oob_data** %16, align 8
  %21 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %22 = icmp ne %struct.oob_data* %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.oob_data* @kmalloc(i32 32, i32 %24)
  store %struct.oob_data* %25, %struct.oob_data** %16, align 8
  %26 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %27 = icmp ne %struct.oob_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %132

31:                                               ; preds = %23
  %32 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %33 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %32, i32 0, i32 7
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @bacpy(i32* %33, i32* %34)
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %38 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %40 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %39, i32 0, i32 5
  %41 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 1
  %43 = call i32 @list_add(i32* %40, i32* %42)
  br label %44

44:                                               ; preds = %31, %7
  %45 = load i32*, i32** %12, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %70

47:                                               ; preds = %44
  %48 = load i32*, i32** %13, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  %51 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %52 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @memcpy(i32 %53, i32* %54, i32 4)
  %56 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %57 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @memcpy(i32 %58, i32* %59, i32 4)
  %61 = load i32*, i32** %14, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load i32*, i32** %15, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %68 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %67, i32 0, i32 0
  store i32 3, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %63, %50
  br label %91

70:                                               ; preds = %47, %44
  %71 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %72 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memset(i32 %73, i32 0, i32 4)
  %75 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %76 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memset(i32 %77, i32 0, i32 4)
  %79 = load i32*, i32** %14, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %70
  %82 = load i32*, i32** %15, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %86 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %85, i32 0, i32 0
  store i32 2, i32* %86, align 4
  br label %90

87:                                               ; preds = %81, %70
  %88 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %89 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %88, i32 0, i32 0
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %69
  %92 = load i32*, i32** %14, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load i32*, i32** %15, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %99 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %14, align 8
  %102 = call i32 @memcpy(i32 %100, i32* %101, i32 4)
  %103 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %104 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @memcpy(i32 %105, i32* %106, i32 4)
  br label %126

108:                                              ; preds = %94, %91
  %109 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %110 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @memset(i32 %111, i32 0, i32 4)
  %113 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %114 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @memset(i32 %115, i32 0, i32 4)
  %117 = load i32*, i32** %12, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %108
  %120 = load i32*, i32** %13, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.oob_data*, %struct.oob_data** %16, align 8
  %124 = getelementptr inbounds %struct.oob_data, %struct.oob_data* %123, i32 0, i32 0
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %119, %108
  br label %126

126:                                              ; preds = %125, %97
  %127 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %128 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = call i32 @BT_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %129, i32* %130)
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %126, %28
  %133 = load i32, i32* %8, align 4
  ret i32 %133
}

declare dso_local %struct.oob_data* @hci_find_remote_oob_data(%struct.hci_dev*, i32*, i32) #1

declare dso_local %struct.oob_data* @kmalloc(i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
