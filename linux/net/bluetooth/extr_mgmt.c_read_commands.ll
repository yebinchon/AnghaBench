; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_read_commands.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_read_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32 }
%struct.mgmt_rp_read_commands = type { i32*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"sock %p\00", align 1
@HCI_SOCK_TRUSTED = common dso_local global i32 0, align 4
@mgmt_commands = common dso_local global i32* null, align 8
@mgmt_events = common dso_local global i32* null, align 8
@mgmt_untrusted_commands = common dso_local global i32* null, align 8
@mgmt_untrusted_events = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MGMT_INDEX_NONE = common dso_local global i32 0, align 4
@MGMT_OP_READ_COMMANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @read_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_commands(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_rp_read_commands*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.sock* %18)
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = load i32, i32* @HCI_SOCK_TRUSTED, align 4
  %22 = call i64 @hci_sock_test_flag(%struct.sock* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load i32*, i32** @mgmt_commands, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** @mgmt_events, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  store i32 %28, i32* %12, align 4
  br label %34

29:                                               ; preds = %4
  %30 = load i32*, i32** @mgmt_untrusted_commands, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32*, i32** @mgmt_untrusted_events, align 8
  %33 = call i32 @ARRAY_SIZE(i32* %32)
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = add i64 24, %39
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.mgmt_rp_read_commands* @kmalloc(i64 %41, i32 %42)
  store %struct.mgmt_rp_read_commands* %43, %struct.mgmt_rp_read_commands** %10, align 8
  %44 = load %struct.mgmt_rp_read_commands*, %struct.mgmt_rp_read_commands** %10, align 8
  %45 = icmp ne %struct.mgmt_rp_read_commands* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %152

49:                                               ; preds = %34
  %50 = load i32, i32* %11, align 4
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = load %struct.mgmt_rp_read_commands*, %struct.mgmt_rp_read_commands** %10, align 8
  %53 = getelementptr inbounds %struct.mgmt_rp_read_commands, %struct.mgmt_rp_read_commands* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = load %struct.mgmt_rp_read_commands*, %struct.mgmt_rp_read_commands** %10, align 8
  %57 = getelementptr inbounds %struct.mgmt_rp_read_commands, %struct.mgmt_rp_read_commands* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.sock*, %struct.sock** %6, align 8
  %59 = load i32, i32* @HCI_SOCK_TRUSTED, align 4
  %60 = call i64 @hci_sock_test_flag(%struct.sock* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %102

62:                                               ; preds = %49
  %63 = load %struct.mgmt_rp_read_commands*, %struct.mgmt_rp_read_commands** %10, align 8
  %64 = getelementptr inbounds %struct.mgmt_rp_read_commands, %struct.mgmt_rp_read_commands* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %16, align 8
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %78, %62
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i32*, i32** @mgmt_commands, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %16, align 8
  %77 = call i32 @put_unaligned_le16(i32 %75, i32* %76)
  br label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  %81 = load i32*, i32** %16, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %16, align 8
  br label %66

83:                                               ; preds = %66
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %96, %83
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load i32*, i32** @mgmt_events, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %16, align 8
  %95 = call i32 @put_unaligned_le16(i32 %93, i32* %94)
  br label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  %99 = load i32*, i32** %16, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %16, align 8
  br label %84

101:                                              ; preds = %84
  br label %142

102:                                              ; preds = %49
  %103 = load %struct.mgmt_rp_read_commands*, %struct.mgmt_rp_read_commands** %10, align 8
  %104 = getelementptr inbounds %struct.mgmt_rp_read_commands, %struct.mgmt_rp_read_commands* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %17, align 8
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %118, %102
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %106
  %111 = load i32*, i32** @mgmt_untrusted_commands, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %17, align 8
  %117 = call i32 @put_unaligned_le16(i32 %115, i32* %116)
  br label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  %121 = load i32*, i32** %17, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %17, align 8
  br label %106

123:                                              ; preds = %106
  store i32 0, i32* %14, align 4
  br label %124

124:                                              ; preds = %136, %123
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %124
  %129 = load i32*, i32** @mgmt_untrusted_events, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %17, align 8
  %135 = call i32 @put_unaligned_le16(i32 %133, i32* %134)
  br label %136

136:                                              ; preds = %128
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %14, align 4
  %139 = load i32*, i32** %17, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %17, align 8
  br label %124

141:                                              ; preds = %124
  br label %142

142:                                              ; preds = %141, %101
  %143 = load %struct.sock*, %struct.sock** %6, align 8
  %144 = load i32, i32* @MGMT_INDEX_NONE, align 4
  %145 = load i32, i32* @MGMT_OP_READ_COMMANDS, align 4
  %146 = load %struct.mgmt_rp_read_commands*, %struct.mgmt_rp_read_commands** %10, align 8
  %147 = load i64, i64* %13, align 8
  %148 = call i32 @mgmt_cmd_complete(%struct.sock* %143, i32 %144, i32 %145, i32 0, %struct.mgmt_rp_read_commands* %146, i64 %147)
  store i32 %148, i32* %15, align 4
  %149 = load %struct.mgmt_rp_read_commands*, %struct.mgmt_rp_read_commands** %10, align 8
  %150 = call i32 @kfree(%struct.mgmt_rp_read_commands* %149)
  %151 = load i32, i32* %15, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %142, %46
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*) #1

declare dso_local i64 @hci_sock_test_flag(%struct.sock*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.mgmt_rp_read_commands* @kmalloc(i64, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.mgmt_rp_read_commands*, i64) #1

declare dso_local i32 @kfree(%struct.mgmt_rp_read_commands*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
