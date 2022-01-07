; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_probe_write_user_kern.c_bpf_prog1.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_probe_write_user_kern.c_bpf_prog1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.sockaddr_in = type { i32 }

@dnat_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog1(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %9 = bitcast %struct.sockaddr_in* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %11 = call i64 @PT_REGS_PARM2(%struct.pt_regs* %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %7, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %14 = call i64 @PT_REGS_PARM3(%struct.pt_regs* %13)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ugt i64 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

20:                                               ; preds = %1
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @bpf_probe_read(%struct.sockaddr_in* %5, i32 4, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %35

25:                                               ; preds = %20
  %26 = call %struct.sockaddr_in* @bpf_map_lookup_elem(i32* @dnat_map, %struct.sockaddr_in* %5)
  store %struct.sockaddr_in* %26, %struct.sockaddr_in** %6, align 8
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %28 = icmp ne %struct.sockaddr_in* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %31 = call i32 @memcpy(%struct.sockaddr_in* %4, %struct.sockaddr_in* %30, i32 4)
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @bpf_probe_write_user(i8* %32, %struct.sockaddr_in* %4, i32 4)
  br label %34

34:                                               ; preds = %29, %25
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %24, %19
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @PT_REGS_PARM2(%struct.pt_regs*) #2

declare dso_local i64 @PT_REGS_PARM3(%struct.pt_regs*) #2

declare dso_local i64 @bpf_probe_read(%struct.sockaddr_in*, i32, i8*) #2

declare dso_local %struct.sockaddr_in* @bpf_map_lookup_elem(i32*, %struct.sockaddr_in*) #2

declare dso_local i32 @memcpy(%struct.sockaddr_in*, %struct.sockaddr_in*, i32) #2

declare dso_local i32 @bpf_probe_write_user(i8*, %struct.sockaddr_in*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
