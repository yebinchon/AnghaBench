; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c___sk_mem_raise_allocated.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c___sk_mem_raise_allocated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i64, i64, i64, i32, i32, %struct.proto* }
%struct.proto = type { i32 }

@mem_cgroup_sockets_enabled = common dso_local global i64 0, align 8
@SK_MEM_RECV = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@SK_MEM_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sk_mem_raise_allocated(%struct.sock* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.proto*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 7
  %17 = load %struct.proto*, %struct.proto** %16, align 8
  store %struct.proto* %17, %struct.proto** %10, align 8
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @sk_memory_allocated_add(%struct.sock* %18, i32 %19)
  store i64 %20, i64* %11, align 8
  store i32 1, i32* %12, align 4
  %21 = load i64, i64* @mem_cgroup_sockets_enabled, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load %struct.sock*, %struct.sock** %6, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @mem_cgroup_charge_skmem(i64 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %131

36:                                               ; preds = %28, %23, %4
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.sock*, %struct.sock** %6, align 8
  %39 = call i64 @sk_prot_mem_limits(%struct.sock* %38, i32 0)
  %40 = icmp sle i64 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.sock*, %struct.sock** %6, align 8
  %43 = call i32 @sk_leave_memory_pressure(%struct.sock* %42)
  store i32 1, i32* %5, align 4
  br label %191

44:                                               ; preds = %36
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.sock*, %struct.sock** %6, align 8
  %47 = call i64 @sk_prot_mem_limits(%struct.sock* %46, i32 1)
  %48 = icmp sgt i64 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.sock*, %struct.sock** %6, align 8
  %51 = call i32 @sk_enter_memory_pressure(%struct.sock* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.sock*, %struct.sock** %6, align 8
  %55 = call i64 @sk_prot_mem_limits(%struct.sock* %54, i32 2)
  %56 = icmp sgt i64 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %131

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @SK_MEM_RECV, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load %struct.sock*, %struct.sock** %6, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 5
  %65 = call i64 @atomic_read(i32* %64)
  %66 = load %struct.sock*, %struct.sock** %6, align 8
  %67 = load %struct.proto*, %struct.proto** %10, align 8
  %68 = call i64 @sk_get_rmem0(%struct.sock* %66, %struct.proto* %67)
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 1, i32* %5, align 4
  br label %191

71:                                               ; preds = %62
  br label %98

72:                                               ; preds = %58
  %73 = load %struct.sock*, %struct.sock** %6, align 8
  %74 = load %struct.proto*, %struct.proto** %10, align 8
  %75 = call i32 @sk_get_wmem0(%struct.sock* %73, %struct.proto* %74)
  store i32 %75, i32* %13, align 4
  %76 = load %struct.sock*, %struct.sock** %6, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SOCK_STREAM, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %72
  %82 = load %struct.sock*, %struct.sock** %6, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 1, i32* %5, align 4
  br label %191

88:                                               ; preds = %81
  br label %97

89:                                               ; preds = %72
  %90 = load %struct.sock*, %struct.sock** %6, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 6
  %92 = call i32 @refcount_read(i32* %91)
  %93 = load i32, i32* %13, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 1, i32* %5, align 4
  br label %191

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %88
  br label %98

98:                                               ; preds = %97, %71
  %99 = load %struct.sock*, %struct.sock** %6, align 8
  %100 = call i64 @sk_has_memory_pressure(%struct.sock* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %130

102:                                              ; preds = %98
  %103 = load %struct.sock*, %struct.sock** %6, align 8
  %104 = call i32 @sk_under_memory_pressure(%struct.sock* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  store i32 1, i32* %5, align 4
  br label %191

107:                                              ; preds = %102
  %108 = load %struct.sock*, %struct.sock** %6, align 8
  %109 = call i64 @sk_sockets_allocated_read_positive(%struct.sock* %108)
  store i64 %109, i64* %14, align 8
  %110 = load %struct.sock*, %struct.sock** %6, align 8
  %111 = call i64 @sk_prot_mem_limits(%struct.sock* %110, i32 2)
  %112 = load i64, i64* %14, align 8
  %113 = load %struct.sock*, %struct.sock** %6, align 8
  %114 = getelementptr inbounds %struct.sock, %struct.sock* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load %struct.sock*, %struct.sock** %6, align 8
  %118 = getelementptr inbounds %struct.sock, %struct.sock* %117, i32 0, i32 5
  %119 = call i64 @atomic_read(i32* %118)
  %120 = add nsw i64 %116, %119
  %121 = load %struct.sock*, %struct.sock** %6, align 8
  %122 = getelementptr inbounds %struct.sock, %struct.sock* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %120, %123
  %125 = call i64 @sk_mem_pages(i64 %124)
  %126 = mul nsw i64 %112, %125
  %127 = icmp sgt i64 %111, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %107
  store i32 1, i32* %5, align 4
  br label %191

129:                                              ; preds = %107
  br label %130

130:                                              ; preds = %129, %98
  br label %131

131:                                              ; preds = %130, %57, %35
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @SK_MEM_SEND, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %156

135:                                              ; preds = %131
  %136 = load %struct.sock*, %struct.sock** %6, align 8
  %137 = getelementptr inbounds %struct.sock, %struct.sock* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @SOCK_STREAM, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %135
  %142 = load %struct.sock*, %struct.sock** %6, align 8
  %143 = call i32 @sk_stream_moderate_sndbuf(%struct.sock* %142)
  %144 = load %struct.sock*, %struct.sock** %6, align 8
  %145 = getelementptr inbounds %struct.sock, %struct.sock* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = load %struct.sock*, %struct.sock** %6, align 8
  %151 = getelementptr inbounds %struct.sock, %struct.sock* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp sge i64 %149, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %141
  store i32 1, i32* %5, align 4
  br label %191

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %155, %135, %131
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @SK_MEM_SEND, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %167, label %160

160:                                              ; preds = %156
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @SK_MEM_RECV, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %160
  %165 = load i32, i32* %12, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %164, %156
  %168 = load %struct.sock*, %struct.sock** %6, align 8
  %169 = load %struct.proto*, %struct.proto** %10, align 8
  %170 = load i64, i64* %11, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @trace_sock_exceed_buf_limit(%struct.sock* %168, %struct.proto* %169, i64 %170, i32 %171)
  br label %173

173:                                              ; preds = %167, %164, %160
  %174 = load %struct.sock*, %struct.sock** %6, align 8
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @sk_memory_allocated_sub(%struct.sock* %174, i32 %175)
  %177 = load i64, i64* @mem_cgroup_sockets_enabled, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %173
  %180 = load %struct.sock*, %struct.sock** %6, align 8
  %181 = getelementptr inbounds %struct.sock, %struct.sock* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load %struct.sock*, %struct.sock** %6, align 8
  %186 = getelementptr inbounds %struct.sock, %struct.sock* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @mem_cgroup_uncharge_skmem(i64 %187, i32 %188)
  br label %190

190:                                              ; preds = %184, %179, %173
  store i32 0, i32* %5, align 4
  br label %191

191:                                              ; preds = %190, %154, %128, %106, %95, %87, %70, %41
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i64 @sk_memory_allocated_add(%struct.sock*, i32) #1

declare dso_local i32 @mem_cgroup_charge_skmem(i64, i32) #1

declare dso_local i64 @sk_prot_mem_limits(%struct.sock*, i32) #1

declare dso_local i32 @sk_leave_memory_pressure(%struct.sock*) #1

declare dso_local i32 @sk_enter_memory_pressure(%struct.sock*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @sk_get_rmem0(%struct.sock*, %struct.proto*) #1

declare dso_local i32 @sk_get_wmem0(%struct.sock*, %struct.proto*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i64 @sk_has_memory_pressure(%struct.sock*) #1

declare dso_local i32 @sk_under_memory_pressure(%struct.sock*) #1

declare dso_local i64 @sk_sockets_allocated_read_positive(%struct.sock*) #1

declare dso_local i64 @sk_mem_pages(i64) #1

declare dso_local i32 @sk_stream_moderate_sndbuf(%struct.sock*) #1

declare dso_local i32 @trace_sock_exceed_buf_limit(%struct.sock*, %struct.proto*, i64, i32) #1

declare dso_local i32 @sk_memory_allocated_sub(%struct.sock*, i32) #1

declare dso_local i32 @mem_cgroup_uncharge_skmem(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
