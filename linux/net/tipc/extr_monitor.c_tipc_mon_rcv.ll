; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_tipc_mon_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_monitor.c_tipc_mon_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_mon_state = type { i32, i32, i32, i32 }
%struct.tipc_monitor = type { i32 }
%struct.tipc_mon_domain = type { i32, i32, i32, i32, i32*, i32 }
%struct.tipc_peer = type { i32, %struct.tipc_mon_domain*, i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_mon_rcv(%struct.net* %0, i8* %1, i32 %2, i32 %3, %struct.tipc_mon_state* %4, i32 %5) #0 {
  %7 = alloca %struct.net*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tipc_mon_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tipc_monitor*, align 8
  %14 = alloca %struct.tipc_mon_domain*, align 8
  %15 = alloca %struct.tipc_mon_domain, align 8
  %16 = alloca %struct.tipc_mon_domain*, align 8
  %17 = alloca %struct.tipc_peer*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.tipc_mon_state* %4, %struct.tipc_mon_state** %11, align 8
  store i32 %5, i32* %12, align 4
  %25 = load %struct.net*, %struct.net** %7, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call %struct.tipc_monitor* @tipc_monitor(%struct.net* %25, i32 %26)
  store %struct.tipc_monitor* %27, %struct.tipc_monitor** %13, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = bitcast i8* %28 to %struct.tipc_mon_domain*
  store %struct.tipc_mon_domain* %29, %struct.tipc_mon_domain** %14, align 8
  %30 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %14, align 8
  %31 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ntohs(i32 %32)
  store i32 %33, i32* %18, align 4
  %34 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %14, align 8
  %35 = load i32, i32* %18, align 4
  %36 = call i32 @dom_rec_len(%struct.tipc_mon_domain* %34, i32 %35)
  store i32 %36, i32* %19, align 4
  %37 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %14, align 8
  %38 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ntohs(i32 %39)
  store i32 %40, i32* %20, align 4
  %41 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %14, align 8
  %42 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ntohs(i32 %43)
  store i32 %44, i32* %21, align 4
  %45 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %11, align 8
  %46 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %22, align 4
  %48 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %11, align 8
  %49 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %14, align 8
  %52 = call i32 @dom_rec_len(%struct.tipc_mon_domain* %51, i32 0)
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %6
  br label %230

55:                                               ; preds = %6
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %14, align 8
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @dom_rec_len(%struct.tipc_mon_domain* %57, i32 %58)
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %230

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %14, align 8
  %68 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ntohs(i32 %69)
  %71 = load i32, i32* %19, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66, %62
  br label %230

74:                                               ; preds = %66
  %75 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %11, align 8
  %76 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %20, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %11, align 8
  %83 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %21, align 4
  %85 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %11, align 8
  %86 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %11, align 8
  %88 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %79, %74
  %90 = load i32, i32* %21, align 4
  %91 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %11, align 8
  %92 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @more(i32 %90, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i32, i32* %21, align 4
  %98 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %11, align 8
  %99 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %89
  %101 = load i32, i32* %20, align 4
  %102 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %11, align 8
  %103 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @more(i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %22, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  br label %230

111:                                              ; preds = %107, %100
  %112 = load %struct.tipc_monitor*, %struct.tipc_monitor** %13, align 8
  %113 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %112, i32 0, i32 0
  %114 = call i32 @write_lock_bh(i32* %113)
  %115 = load %struct.tipc_monitor*, %struct.tipc_monitor** %13, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call %struct.tipc_peer* @get_peer(%struct.tipc_monitor* %115, i32 %116)
  store %struct.tipc_peer* %117, %struct.tipc_peer** %17, align 8
  %118 = load %struct.tipc_peer*, %struct.tipc_peer** %17, align 8
  %119 = icmp ne %struct.tipc_peer* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %111
  %121 = load %struct.tipc_peer*, %struct.tipc_peer** %17, align 8
  %122 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %120, %111
  br label %226

126:                                              ; preds = %120
  %127 = load %struct.tipc_peer*, %struct.tipc_peer** %17, align 8
  %128 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  %129 = load i32, i32* %20, align 4
  %130 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %11, align 8
  %131 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @more(i32 %129, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %126
  br label %226

136:                                              ; preds = %126
  %137 = load i32, i32* %20, align 4
  %138 = load %struct.tipc_mon_state*, %struct.tipc_mon_state** %11, align 8
  %139 = getelementptr inbounds %struct.tipc_mon_state, %struct.tipc_mon_state* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %15, i32 0, i32 0
  store i32 0, i32* %140, align 8
  %141 = load %struct.tipc_peer*, %struct.tipc_peer** %17, align 8
  %142 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %141, i32 0, i32 1
  %143 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %142, align 8
  store %struct.tipc_mon_domain* %143, %struct.tipc_mon_domain** %16, align 8
  %144 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %16, align 8
  %145 = icmp ne %struct.tipc_mon_domain* %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %136
  %147 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %16, align 8
  %148 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %16, align 8
  %149 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @memcpy(%struct.tipc_mon_domain* %15, %struct.tipc_mon_domain* %147, i32 %150)
  br label %152

152:                                              ; preds = %146, %136
  %153 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %16, align 8
  %154 = icmp ne %struct.tipc_mon_domain* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %16, align 8
  %157 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %19, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %174

161:                                              ; preds = %155, %152
  %162 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %16, align 8
  %163 = call i32 @kfree(%struct.tipc_mon_domain* %162)
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* @GFP_ATOMIC, align 4
  %166 = call %struct.tipc_mon_domain* @kmalloc(i32 %164, i32 %165)
  store %struct.tipc_mon_domain* %166, %struct.tipc_mon_domain** %16, align 8
  %167 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %16, align 8
  %168 = load %struct.tipc_peer*, %struct.tipc_peer** %17, align 8
  %169 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %168, i32 0, i32 1
  store %struct.tipc_mon_domain* %167, %struct.tipc_mon_domain** %169, align 8
  %170 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %16, align 8
  %171 = icmp ne %struct.tipc_mon_domain* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %161
  br label %226

173:                                              ; preds = %161
  br label %174

174:                                              ; preds = %173, %155
  %175 = load i32, i32* %19, align 4
  %176 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %16, align 8
  %177 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* %20, align 4
  %179 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %16, align 8
  %180 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %18, align 4
  %182 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %16, align 8
  %183 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %14, align 8
  %185 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @be64_to_cpu(i32 %186)
  %188 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %16, align 8
  %189 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %188, i32 0, i32 5
  store i32 %187, i32* %189, align 8
  store i32 0, i32* %23, align 4
  br label %190

190:                                              ; preds = %209, %174
  %191 = load i32, i32* %23, align 4
  %192 = load i32, i32* %18, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %212

194:                                              ; preds = %190
  %195 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %14, align 8
  %196 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %23, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @ntohl(i32 %201)
  %203 = load %struct.tipc_mon_domain*, %struct.tipc_mon_domain** %16, align 8
  %204 = getelementptr inbounds %struct.tipc_mon_domain, %struct.tipc_mon_domain* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %23, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %202, i32* %208, align 4
  br label %209

209:                                              ; preds = %194
  %210 = load i32, i32* %23, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %23, align 4
  br label %190

212:                                              ; preds = %190
  %213 = load %struct.tipc_peer*, %struct.tipc_peer** %17, align 8
  %214 = getelementptr inbounds %struct.tipc_peer, %struct.tipc_peer* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  store i32 %215, i32* %24, align 4
  %216 = load %struct.tipc_monitor*, %struct.tipc_monitor** %13, align 8
  %217 = load %struct.tipc_peer*, %struct.tipc_peer** %17, align 8
  %218 = call i32 @mon_apply_domain(%struct.tipc_monitor* %216, %struct.tipc_peer* %217)
  %219 = load %struct.tipc_peer*, %struct.tipc_peer** %17, align 8
  %220 = load i32, i32* %24, align 4
  %221 = call i32 @mon_identify_lost_members(%struct.tipc_peer* %219, %struct.tipc_mon_domain* %15, i32 %220)
  %222 = load %struct.tipc_monitor*, %struct.tipc_monitor** %13, align 8
  %223 = load %struct.tipc_peer*, %struct.tipc_peer** %17, align 8
  %224 = call i32 @peer_head(%struct.tipc_peer* %223)
  %225 = call i32 @mon_assign_roles(%struct.tipc_monitor* %222, i32 %224)
  br label %226

226:                                              ; preds = %212, %172, %135, %125
  %227 = load %struct.tipc_monitor*, %struct.tipc_monitor** %13, align 8
  %228 = getelementptr inbounds %struct.tipc_monitor, %struct.tipc_monitor* %227, i32 0, i32 0
  %229 = call i32 @write_unlock_bh(i32* %228)
  br label %230

230:                                              ; preds = %226, %110, %73, %61, %54
  ret void
}

declare dso_local %struct.tipc_monitor* @tipc_monitor(%struct.net*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @dom_rec_len(%struct.tipc_mon_domain*, i32) #1

declare dso_local i64 @more(i32, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.tipc_peer* @get_peer(%struct.tipc_monitor*, i32) #1

declare dso_local i32 @memcpy(%struct.tipc_mon_domain*, %struct.tipc_mon_domain*, i32) #1

declare dso_local i32 @kfree(%struct.tipc_mon_domain*) #1

declare dso_local %struct.tipc_mon_domain* @kmalloc(i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @mon_apply_domain(%struct.tipc_monitor*, %struct.tipc_peer*) #1

declare dso_local i32 @mon_identify_lost_members(%struct.tipc_peer*, %struct.tipc_mon_domain*, i32) #1

declare dso_local i32 @mon_assign_roles(%struct.tipc_monitor*, i32) #1

declare dso_local i32 @peer_head(%struct.tipc_peer*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
