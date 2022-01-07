; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_nsproxy.c_create_new_namespaces.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_nsproxy.c_create_new_namespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsproxy = type { i64, i64, i64, i64, i64, i64 }
%struct.task_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.user_namespace = type { i32 }
%struct.fs_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@nsproxy_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nsproxy* (i64, %struct.task_struct*, %struct.user_namespace*, %struct.fs_struct*)* @create_new_namespaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nsproxy* @create_new_namespaces(i64 %0, %struct.task_struct* %1, %struct.user_namespace* %2, %struct.fs_struct* %3) #0 {
  %5 = alloca %struct.nsproxy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.user_namespace*, align 8
  %9 = alloca %struct.fs_struct*, align 8
  %10 = alloca %struct.nsproxy*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store %struct.task_struct* %1, %struct.task_struct** %7, align 8
  store %struct.user_namespace* %2, %struct.user_namespace** %8, align 8
  store %struct.fs_struct* %3, %struct.fs_struct** %9, align 8
  %12 = call %struct.nsproxy* (...) @create_nsproxy()
  store %struct.nsproxy* %12, %struct.nsproxy** %10, align 8
  %13 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %14 = icmp ne %struct.nsproxy* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.nsproxy* @ERR_PTR(i32 %17)
  store %struct.nsproxy* %18, %struct.nsproxy** %5, align 8
  br label %203

19:                                               ; preds = %4
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %27 = load %struct.fs_struct*, %struct.fs_struct** %9, align 8
  %28 = call i64 @copy_mnt_ns(i64 %20, i32 %25, %struct.user_namespace* %26, %struct.fs_struct* %27)
  %29 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %30 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %32 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @IS_ERR(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %19
  %37 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %38 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @PTR_ERR(i64 %39)
  store i32 %40, i32* %11, align 4
  br label %197

41:                                               ; preds = %19
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %44 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @copy_utsname(i64 %42, %struct.user_namespace* %43, i32 %48)
  %50 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %51 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %53 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @IS_ERR(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %41
  %58 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %59 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @PTR_ERR(i64 %60)
  store i32 %61, i32* %11, align 4
  br label %186

62:                                               ; preds = %41
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %65 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @copy_ipcs(i64 %63, %struct.user_namespace* %64, i32 %69)
  %71 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %72 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %74 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @IS_ERR(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %62
  %79 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %80 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @PTR_ERR(i64 %81)
  store i32 %82, i32* %11, align 4
  br label %175

83:                                               ; preds = %62
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %86 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %87 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @copy_pid_ns(i64 %84, %struct.user_namespace* %85, i32 %90)
  %92 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %93 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %92, i32 0, i32 3
  store i64 %91, i64* %93, align 8
  %94 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %95 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @IS_ERR(i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %83
  %100 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %101 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @PTR_ERR(i64 %102)
  store i32 %103, i32* %11, align 4
  br label %164

104:                                              ; preds = %83
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %107 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %108 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @copy_cgroup_ns(i64 %105, %struct.user_namespace* %106, i32 %111)
  %113 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %114 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %113, i32 0, i32 4
  store i64 %112, i64* %114, align 8
  %115 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %116 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @IS_ERR(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %104
  %121 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %122 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @PTR_ERR(i64 %123)
  store i32 %124, i32* %11, align 4
  br label %153

125:                                              ; preds = %104
  %126 = load i64, i64* %6, align 8
  %127 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %128 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %129 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @copy_net_ns(i64 %126, %struct.user_namespace* %127, i32 %132)
  %134 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %135 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %134, i32 0, i32 5
  store i64 %133, i64* %135, align 8
  %136 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %137 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @IS_ERR(i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %125
  %142 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %143 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @PTR_ERR(i64 %144)
  store i32 %145, i32* %11, align 4
  br label %148

146:                                              ; preds = %125
  %147 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  store %struct.nsproxy* %147, %struct.nsproxy** %5, align 8
  br label %203

148:                                              ; preds = %141
  %149 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %150 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @put_cgroup_ns(i64 %151)
  br label %153

153:                                              ; preds = %148, %120
  %154 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %155 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %160 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @put_pid_ns(i64 %161)
  br label %163

163:                                              ; preds = %158, %153
  br label %164

164:                                              ; preds = %163, %99
  %165 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %166 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %171 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @put_ipc_ns(i64 %172)
  br label %174

174:                                              ; preds = %169, %164
  br label %175

175:                                              ; preds = %174, %78
  %176 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %177 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %182 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @put_uts_ns(i64 %183)
  br label %185

185:                                              ; preds = %180, %175
  br label %186

186:                                              ; preds = %185, %57
  %187 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %188 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %193 = getelementptr inbounds %struct.nsproxy, %struct.nsproxy* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @put_mnt_ns(i64 %194)
  br label %196

196:                                              ; preds = %191, %186
  br label %197

197:                                              ; preds = %196, %36
  %198 = load i32, i32* @nsproxy_cachep, align 4
  %199 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  %200 = call i32 @kmem_cache_free(i32 %198, %struct.nsproxy* %199)
  %201 = load i32, i32* %11, align 4
  %202 = call %struct.nsproxy* @ERR_PTR(i32 %201)
  store %struct.nsproxy* %202, %struct.nsproxy** %5, align 8
  br label %203

203:                                              ; preds = %197, %146, %15
  %204 = load %struct.nsproxy*, %struct.nsproxy** %5, align 8
  ret %struct.nsproxy* %204
}

declare dso_local %struct.nsproxy* @create_nsproxy(...) #1

declare dso_local %struct.nsproxy* @ERR_PTR(i32) #1

declare dso_local i64 @copy_mnt_ns(i64, i32, %struct.user_namespace*, %struct.fs_struct*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @copy_utsname(i64, %struct.user_namespace*, i32) #1

declare dso_local i64 @copy_ipcs(i64, %struct.user_namespace*, i32) #1

declare dso_local i64 @copy_pid_ns(i64, %struct.user_namespace*, i32) #1

declare dso_local i64 @copy_cgroup_ns(i64, %struct.user_namespace*, i32) #1

declare dso_local i64 @copy_net_ns(i64, %struct.user_namespace*, i32) #1

declare dso_local i32 @put_cgroup_ns(i64) #1

declare dso_local i32 @put_pid_ns(i64) #1

declare dso_local i32 @put_ipc_ns(i64) #1

declare dso_local i32 @put_uts_ns(i64) #1

declare dso_local i32 @put_mnt_ns(i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nsproxy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
