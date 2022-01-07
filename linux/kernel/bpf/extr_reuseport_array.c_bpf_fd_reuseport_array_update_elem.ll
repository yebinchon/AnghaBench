; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_reuseport_array.c_bpf_fd_reuseport_array_update_elem.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_reuseport_array.c_bpf_fd_reuseport_array_update_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i64, i32 }
%struct.reuseport_array = type { i32* }
%struct.sock = type { i32, i32, i32 }
%struct.sock_reuseport = type { i32, i32, i32 }
%struct.socket = type { i32, %struct.sock_reuseport* }

@BPF_EXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@S32_MAX = common dso_local global i32 0, align 4
@reuseport_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_fd_reuseport_array_update_elem(%struct.bpf_map* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_map*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.reuseport_array*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.sock*, align 8
  %14 = alloca %struct.sock_reuseport*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.socket*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.bpf_map* %0, %struct.bpf_map** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %21 = call %struct.reuseport_array* @reuseport_array(%struct.bpf_map* %20)
  store %struct.reuseport_array* %21, %struct.reuseport_array** %10, align 8
  store %struct.sock* null, %struct.sock** %11, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to i64*
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %15, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @BPF_EXIST, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %180

31:                                               ; preds = %4
  %32 = load i64, i64* %15, align 8
  %33 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %34 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp uge i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @E2BIG, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %180

40:                                               ; preds = %31
  %41 = load %struct.bpf_map*, %struct.bpf_map** %6, align 8
  %42 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %44, 4
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* @S32_MAX, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %180

56:                                               ; preds = %46
  %57 = load i32, i32* %19, align 4
  store i32 %57, i32* %18, align 4
  br label %62

58:                                               ; preds = %40
  %59 = load i8*, i8** %8, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %18, align 4
  br label %62

62:                                               ; preds = %58, %56
  %63 = load i32, i32* %18, align 4
  %64 = call %struct.socket* @sockfd_lookup(i32 %63, i32* %17)
  store %struct.socket* %64, %struct.socket** %16, align 8
  %65 = load %struct.socket*, %struct.socket** %16, align 8
  %66 = icmp ne %struct.socket* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %5, align 4
  br label %180

69:                                               ; preds = %62
  %70 = load %struct.socket*, %struct.socket** %16, align 8
  %71 = getelementptr inbounds %struct.socket, %struct.socket* %70, i32 0, i32 1
  %72 = load %struct.sock_reuseport*, %struct.sock_reuseport** %71, align 8
  %73 = bitcast %struct.sock_reuseport* %72 to %struct.sock*
  store %struct.sock* %73, %struct.sock** %13, align 8
  %74 = load %struct.sock*, %struct.sock** %13, align 8
  %75 = icmp ne %struct.sock* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %17, align 4
  br label %174

79:                                               ; preds = %69
  %80 = load %struct.reuseport_array*, %struct.reuseport_array** %10, align 8
  %81 = load %struct.sock*, %struct.sock** %13, align 8
  %82 = bitcast %struct.sock* %81 to %struct.sock_reuseport*
  %83 = load %struct.reuseport_array*, %struct.reuseport_array** %10, align 8
  %84 = getelementptr inbounds %struct.reuseport_array, %struct.reuseport_array* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %15, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.sock_reuseport* @rcu_access_pointer(i32 %88)
  %90 = load %struct.sock*, %struct.sock** %13, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.sock_reuseport* @rcu_access_pointer(i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @reuseport_array_update_check(%struct.reuseport_array* %80, %struct.sock_reuseport* %82, %struct.sock_reuseport* %89, %struct.sock_reuseport* %93, i32 %94)
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %79
  br label %174

99:                                               ; preds = %79
  %100 = call i32 @spin_lock_bh(i32* @reuseport_lock)
  %101 = load %struct.sock*, %struct.sock** %13, align 8
  %102 = getelementptr inbounds %struct.sock, %struct.sock* %101, i32 0, i32 0
  %103 = call i32 @write_lock_bh(i32* %102)
  %104 = load %struct.reuseport_array*, %struct.reuseport_array** %10, align 8
  %105 = getelementptr inbounds %struct.reuseport_array, %struct.reuseport_array* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* %15, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @lockdep_is_held(i32* @reuseport_lock)
  %111 = call %struct.sock_reuseport* @rcu_dereference_protected(i32 %109, i32 %110)
  %112 = bitcast %struct.sock_reuseport* %111 to %struct.sock*
  store %struct.sock* %112, %struct.sock** %12, align 8
  %113 = load %struct.sock*, %struct.sock** %13, align 8
  %114 = getelementptr inbounds %struct.sock, %struct.sock* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @lockdep_is_held(i32* @reuseport_lock)
  %117 = call %struct.sock_reuseport* @rcu_dereference_protected(i32 %115, i32 %116)
  store %struct.sock_reuseport* %117, %struct.sock_reuseport** %14, align 8
  %118 = load %struct.reuseport_array*, %struct.reuseport_array** %10, align 8
  %119 = load %struct.sock*, %struct.sock** %13, align 8
  %120 = bitcast %struct.sock* %119 to %struct.sock_reuseport*
  %121 = load %struct.sock*, %struct.sock** %12, align 8
  %122 = bitcast %struct.sock* %121 to %struct.sock_reuseport*
  %123 = load %struct.sock_reuseport*, %struct.sock_reuseport** %14, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @reuseport_array_update_check(%struct.reuseport_array* %118, %struct.sock_reuseport* %120, %struct.sock_reuseport* %122, %struct.sock_reuseport* %123, i32 %124)
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %99
  br label %155

129:                                              ; preds = %99
  %130 = load %struct.sock_reuseport*, %struct.sock_reuseport** %14, align 8
  %131 = call i32 @reuseport_get_id(%struct.sock_reuseport* %130)
  store i32 %131, i32* %17, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %155

135:                                              ; preds = %129
  %136 = load %struct.sock*, %struct.sock** %13, align 8
  %137 = getelementptr inbounds %struct.sock, %struct.sock* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.reuseport_array*, %struct.reuseport_array** %10, align 8
  %140 = getelementptr inbounds %struct.reuseport_array, %struct.reuseport_array* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* %15, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = call i32 @WRITE_ONCE(i32 %138, i32* %143)
  %145 = load %struct.reuseport_array*, %struct.reuseport_array** %10, align 8
  %146 = getelementptr inbounds %struct.reuseport_array, %struct.reuseport_array* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %15, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.sock*, %struct.sock** %13, align 8
  %152 = bitcast %struct.sock* %151 to %struct.sock_reuseport*
  %153 = call i32 @rcu_assign_pointer(i32 %150, %struct.sock_reuseport* %152)
  %154 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %154, %struct.sock** %11, align 8
  store i32 0, i32* %17, align 4
  br label %155

155:                                              ; preds = %135, %134, %128
  %156 = load %struct.sock*, %struct.sock** %13, align 8
  %157 = getelementptr inbounds %struct.sock, %struct.sock* %156, i32 0, i32 0
  %158 = call i32 @write_unlock_bh(i32* %157)
  %159 = load %struct.sock*, %struct.sock** %11, align 8
  %160 = icmp ne %struct.sock* %159, null
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = load %struct.sock*, %struct.sock** %11, align 8
  %163 = getelementptr inbounds %struct.sock, %struct.sock* %162, i32 0, i32 0
  %164 = call i32 @write_lock_bh(i32* %163)
  %165 = load %struct.sock*, %struct.sock** %11, align 8
  %166 = getelementptr inbounds %struct.sock, %struct.sock* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @WRITE_ONCE(i32 %167, i32* null)
  %169 = load %struct.sock*, %struct.sock** %11, align 8
  %170 = getelementptr inbounds %struct.sock, %struct.sock* %169, i32 0, i32 0
  %171 = call i32 @write_unlock_bh(i32* %170)
  br label %172

172:                                              ; preds = %161, %155
  %173 = call i32 @spin_unlock_bh(i32* @reuseport_lock)
  br label %174

174:                                              ; preds = %172, %98, %76
  %175 = load %struct.socket*, %struct.socket** %16, align 8
  %176 = getelementptr inbounds %struct.socket, %struct.socket* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @fput(i32 %177)
  %179 = load i32, i32* %17, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %174, %67, %53, %37, %28
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local %struct.reuseport_array* @reuseport_array(%struct.bpf_map*) #1

declare dso_local %struct.socket* @sockfd_lookup(i32, i32*) #1

declare dso_local i32 @reuseport_array_update_check(%struct.reuseport_array*, %struct.sock_reuseport*, %struct.sock_reuseport*, %struct.sock_reuseport*, i32) #1

declare dso_local %struct.sock_reuseport* @rcu_access_pointer(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.sock_reuseport* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @reuseport_get_id(%struct.sock_reuseport*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.sock_reuseport*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
