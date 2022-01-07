; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_cred_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_cred_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type opaque
%struct.task_security_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.cred*, i32)* @selinux_cred_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_cred_prepare(%struct.cred* %0, %struct.cred* %1, i32 %2) #0 {
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_security_struct*, align 8
  %8 = alloca %struct.task_security_struct*, align 8
  store %struct.cred* %0, %struct.cred** %4, align 8
  store %struct.cred* %1, %struct.cred** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cred*, %struct.cred** %5, align 8
  %10 = call i8* @selinux_cred(%struct.cred* %9)
  %11 = bitcast i8* %10 to %struct.task_security_struct*
  store %struct.task_security_struct* %11, %struct.task_security_struct** %7, align 8
  %12 = load %struct.cred*, %struct.cred** %4, align 8
  %13 = call i8* @selinux_cred(%struct.cred* %12)
  %14 = bitcast i8* %13 to %struct.task_security_struct*
  store %struct.task_security_struct* %14, %struct.task_security_struct** %8, align 8
  %15 = load %struct.task_security_struct*, %struct.task_security_struct** %8, align 8
  %16 = load %struct.task_security_struct*, %struct.task_security_struct** %7, align 8
  %17 = bitcast %struct.task_security_struct* %15 to i8*
  %18 = bitcast %struct.task_security_struct* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  ret i32 0
}

declare dso_local i8* @selinux_cred(%struct.cred*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
