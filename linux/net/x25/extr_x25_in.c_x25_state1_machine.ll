; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_in.c_x25_state1_machine.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_in.c_x25_state1_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.sk_buff = type { i32*, i32 }
%struct.x25_address = type { i32 }
%struct.x25_sock = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@X25_STATE_3 = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@X25_STD_MIN_LEN = common dso_local global i32 0, align 4
@X25_MAX_CUD_LEN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@X25_CLEAR_CONFIRMATION = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@X25_STATE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @x25_state1_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_state1_machine(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.x25_address, align 4
  %9 = alloca %struct.x25_address, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.x25_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call %struct.x25_sock* @x25_sk(%struct.sock* %12)
  store %struct.x25_sock* %13, %struct.x25_sock** %11, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %152 [
    i32 130, label %15
    i32 129, label %116
    i32 128, label %128
  ]

15:                                               ; preds = %3
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call i32 @x25_stop_timer(%struct.sock* %16)
  %18 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %19 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %21 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %20, i32 0, i32 10
  store i32 0, i32* %21, align 4
  %22 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %23 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %22, i32 0, i32 9
  store i32 0, i32* %23, align 4
  %24 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %25 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %24, i32 0, i32 8
  store i32 0, i32* %25, align 4
  %26 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %27 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %26, i32 0, i32 7
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* @X25_STATE_3, align 4
  %29 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %30 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @TCP_ESTABLISHED, align 4
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %36 = call i32 @pskb_may_pull(%struct.sk_buff* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %15
  br label %154

39:                                               ; preds = %15
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %42 = call i32 @skb_pull(%struct.sk_buff* %40, i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call i32 @x25_parse_address_block(%struct.sk_buff* %43, %struct.x25_address* %8, %struct.x25_address* %9)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @skb_pull(%struct.sk_buff* %48, i32 %49)
  br label %56

51:                                               ; preds = %39
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %154

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %47
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %59 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %58, i32 0, i32 6
  %60 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %61 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %60, i32 0, i32 5
  %62 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %63 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %62, i32 0, i32 4
  %64 = call i32 @x25_parse_facilities(%struct.sk_buff* %57, i32* %59, i32* %61, i32* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @skb_pull(%struct.sk_buff* %68, i32 %69)
  br label %76

71:                                               ; preds = %56
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %154

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %67
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @X25_MAX_CUD_LEN, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %154

88:                                               ; preds = %81
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %91 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @skb_copy_bits(%struct.sk_buff* %89, i32 0, i32 %93, i32 %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %102 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  br label %104

104:                                              ; preds = %88, %76
  %105 = load %struct.sock*, %struct.sock** %5, align 8
  %106 = load i32, i32* @SOCK_DEAD, align 4
  %107 = call i32 @sock_flag(%struct.sock* %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %104
  %110 = load %struct.sock*, %struct.sock** %5, align 8
  %111 = getelementptr inbounds %struct.sock, %struct.sock* %110, i32 0, i32 0
  %112 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %111, align 8
  %113 = load %struct.sock*, %struct.sock** %5, align 8
  %114 = call i32 %112(%struct.sock* %113)
  br label %115

115:                                              ; preds = %109, %104
  br label %153

116:                                              ; preds = %3
  %117 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %118 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 4
  %120 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %121 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i32 72, i32* %122, align 4
  %123 = load %struct.sock*, %struct.sock** %5, align 8
  %124 = call i32 @x25_write_internal(%struct.sock* %123, i32 128)
  %125 = load %struct.sock*, %struct.sock** %5, align 8
  %126 = load i32, i32* @EISCONN, align 4
  %127 = call i32 @x25_disconnect(%struct.sock* %125, i32 %126, i32 1, i32 72)
  br label %153

128:                                              ; preds = %3
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %131 = add nsw i32 %130, 2
  %132 = call i32 @pskb_may_pull(%struct.sk_buff* %129, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %128
  br label %154

135:                                              ; preds = %128
  %136 = load %struct.sock*, %struct.sock** %5, align 8
  %137 = load i32, i32* @X25_CLEAR_CONFIRMATION, align 4
  %138 = call i32 @x25_write_internal(%struct.sock* %136, i32 %137)
  %139 = load %struct.sock*, %struct.sock** %5, align 8
  %140 = load i32, i32* @ECONNREFUSED, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 4
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @x25_disconnect(%struct.sock* %139, i32 %140, i32 %145, i32 %150)
  br label %153

152:                                              ; preds = %3
  br label %153

153:                                              ; preds = %152, %135, %116, %115
  store i32 0, i32* %4, align 4
  br label %162

154:                                              ; preds = %134, %87, %74, %54, %38
  %155 = load %struct.sock*, %struct.sock** %5, align 8
  %156 = call i32 @x25_write_internal(%struct.sock* %155, i32 128)
  %157 = load i32, i32* @X25_STATE_2, align 4
  %158 = load %struct.x25_sock*, %struct.x25_sock** %11, align 8
  %159 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load %struct.sock*, %struct.sock** %5, align 8
  %161 = call i32 @x25_start_t23timer(%struct.sock* %160)
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %154, %153
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @x25_stop_timer(%struct.sock*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @x25_parse_address_block(%struct.sk_buff*, %struct.x25_address*, %struct.x25_address*) #1

declare dso_local i32 @x25_parse_facilities(%struct.sk_buff*, i32*, i32*, i32*) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @x25_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @x25_disconnect(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @x25_start_t23timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
