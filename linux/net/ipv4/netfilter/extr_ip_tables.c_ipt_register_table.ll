; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ip_tables.c_ipt_register_table.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ip_tables.c_ipt_register_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.xt_table = type { i32 }
%struct.ipt_replace = type { i32, i32 }
%struct.nf_hook_ops = type { i32 }
%struct.xt_table_info = type { i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipt_register_table(%struct.net* %0, %struct.xt_table* %1, %struct.ipt_replace* %2, %struct.nf_hook_ops* %3, %struct.xt_table** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.xt_table*, align 8
  %9 = alloca %struct.ipt_replace*, align 8
  %10 = alloca %struct.nf_hook_ops*, align 8
  %11 = alloca %struct.xt_table**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xt_table_info*, align 8
  %14 = alloca %struct.xt_table_info, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.xt_table*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.xt_table* %1, %struct.xt_table** %8, align 8
  store %struct.ipt_replace* %2, %struct.ipt_replace** %9, align 8
  store %struct.nf_hook_ops* %3, %struct.nf_hook_ops** %10, align 8
  store %struct.xt_table** %4, %struct.xt_table*** %11, align 8
  %17 = bitcast %struct.xt_table_info* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  %18 = load %struct.ipt_replace*, %struct.ipt_replace** %9, align 8
  %19 = getelementptr inbounds %struct.ipt_replace, %struct.ipt_replace* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.xt_table_info* @xt_alloc_table_info(i32 %20)
  store %struct.xt_table_info* %21, %struct.xt_table_info** %13, align 8
  %22 = load %struct.xt_table_info*, %struct.xt_table_info** %13, align 8
  %23 = icmp ne %struct.xt_table_info* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %87

27:                                               ; preds = %5
  %28 = load %struct.xt_table_info*, %struct.xt_table_info** %13, align 8
  %29 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %15, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = load %struct.ipt_replace*, %struct.ipt_replace** %9, align 8
  %33 = getelementptr inbounds %struct.ipt_replace, %struct.ipt_replace* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ipt_replace*, %struct.ipt_replace** %9, align 8
  %36 = getelementptr inbounds %struct.ipt_replace, %struct.ipt_replace* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(i8* %31, i32 %34, i32 %37)
  %39 = load %struct.net*, %struct.net** %7, align 8
  %40 = load %struct.xt_table_info*, %struct.xt_table_info** %13, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = load %struct.ipt_replace*, %struct.ipt_replace** %9, align 8
  %43 = call i32 @translate_table(%struct.net* %39, %struct.xt_table_info* %40, i8* %41, %struct.ipt_replace* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  br label %83

47:                                               ; preds = %27
  %48 = load %struct.net*, %struct.net** %7, align 8
  %49 = load %struct.xt_table*, %struct.xt_table** %8, align 8
  %50 = load %struct.xt_table_info*, %struct.xt_table_info** %13, align 8
  %51 = call %struct.xt_table* @xt_register_table(%struct.net* %48, %struct.xt_table* %49, %struct.xt_table_info* %14, %struct.xt_table_info* %50)
  store %struct.xt_table* %51, %struct.xt_table** %16, align 8
  %52 = load %struct.xt_table*, %struct.xt_table** %16, align 8
  %53 = call i64 @IS_ERR(%struct.xt_table* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.xt_table*, %struct.xt_table** %16, align 8
  %57 = call i32 @PTR_ERR(%struct.xt_table* %56)
  store i32 %57, i32* %12, align 4
  br label %83

58:                                               ; preds = %47
  %59 = load %struct.xt_table**, %struct.xt_table*** %11, align 8
  %60 = load %struct.xt_table*, %struct.xt_table** %59, align 8
  %61 = load %struct.xt_table*, %struct.xt_table** %16, align 8
  %62 = call i32 @WRITE_ONCE(%struct.xt_table* %60, %struct.xt_table* %61)
  %63 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %10, align 8
  %64 = icmp ne %struct.nf_hook_ops* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %87

66:                                               ; preds = %58
  %67 = load %struct.net*, %struct.net** %7, align 8
  %68 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %10, align 8
  %69 = load %struct.xt_table*, %struct.xt_table** %8, align 8
  %70 = getelementptr inbounds %struct.xt_table, %struct.xt_table* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @hweight32(i32 %71)
  %73 = call i32 @nf_register_net_hooks(%struct.net* %67, %struct.nf_hook_ops* %68, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load %struct.net*, %struct.net** %7, align 8
  %78 = load %struct.xt_table*, %struct.xt_table** %16, align 8
  %79 = call i32 @__ipt_unregister_table(%struct.net* %77, %struct.xt_table* %78)
  %80 = load %struct.xt_table**, %struct.xt_table*** %11, align 8
  store %struct.xt_table* null, %struct.xt_table** %80, align 8
  br label %81

81:                                               ; preds = %76, %66
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %6, align 4
  br label %87

83:                                               ; preds = %55, %46
  %84 = load %struct.xt_table_info*, %struct.xt_table_info** %13, align 8
  %85 = call i32 @xt_free_table_info(%struct.xt_table_info* %84)
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %81, %65, %24
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.xt_table_info* @xt_alloc_table_info(i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @translate_table(%struct.net*, %struct.xt_table_info*, i8*, %struct.ipt_replace*) #2

declare dso_local %struct.xt_table* @xt_register_table(%struct.net*, %struct.xt_table*, %struct.xt_table_info*, %struct.xt_table_info*) #2

declare dso_local i64 @IS_ERR(%struct.xt_table*) #2

declare dso_local i32 @PTR_ERR(%struct.xt_table*) #2

declare dso_local i32 @WRITE_ONCE(%struct.xt_table*, %struct.xt_table*) #2

declare dso_local i32 @nf_register_net_hooks(%struct.net*, %struct.nf_hook_ops*, i32) #2

declare dso_local i32 @hweight32(i32) #2

declare dso_local i32 @__ipt_unregister_table(%struct.net*, %struct.xt_table*) #2

declare dso_local i32 @xt_free_table_info(%struct.xt_table_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
