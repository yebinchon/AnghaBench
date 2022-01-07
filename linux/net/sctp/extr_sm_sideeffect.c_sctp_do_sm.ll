; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_do_sm.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_do_sm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_sm_table_entry = type { i32 (%struct.net.0*, %struct.sctp_endpoint.1*, %struct.sctp_association.2*, i32, i8*, %struct.sctp_cmd_seq*)* }
%struct.net.0 = type opaque
%struct.sctp_endpoint.1 = type opaque
%struct.sctp_association.2 = type opaque
%struct.sctp_cmd_seq = type opaque
%struct.sctp_cmd_seq.3 = type { i32 }

@sctp_do_sm.table = internal global [5 x i8* (i32)*] [i8* (i32)* null, i8* (i32)* inttoptr (i64 131 to i8* (i32)*), i8* (i32)* inttoptr (i64 128 to i8* (i32)*), i8* (i32)* inttoptr (i64 130 to i8* (i32)*), i8* (i32)* inttoptr (i64 129 to i8* (i32)*)], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_do_sm(%struct.net* %0, i32 %1, i32 %2, i32 %3, %struct.sctp_endpoint* %4, %struct.sctp_association* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %union.sctp_subtype, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sctp_endpoint*, align 8
  %14 = alloca %struct.sctp_association*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8* (i32)*, align 8
  %18 = alloca %struct.sctp_sm_table_entry*, align 8
  %19 = alloca %struct.sctp_cmd_seq.3, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %9, i32 0, i32 0
  store i32 %2, i32* %22, align 4
  store %struct.net* %0, %struct.net** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.sctp_endpoint* %4, %struct.sctp_endpoint** %13, align 8
  store %struct.sctp_association* %5, %struct.sctp_association** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [5 x i8* (i32)*], [5 x i8* (i32)*]* @sctp_do_sm.table, i64 0, i64 %24
  %26 = load i8* (i32)*, i8* (i32)** %25, align 8
  store i8* (i32)* %26, i8* (i32)** %17, align 8
  store i32 0, i32* %21, align 4
  %27 = load %struct.net*, %struct.net** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %9, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.sctp_sm_table_entry* @sctp_sm_lookup_event(%struct.net* %27, i32 %28, i32 %29, i32 %31)
  store %struct.sctp_sm_table_entry* %32, %struct.sctp_sm_table_entry** %18, align 8
  %33 = call i32 @sctp_init_cmd_seq(%struct.sctp_cmd_seq.3* %19)
  %34 = call i32 (...) @debug_pre_sfn()
  %35 = load %struct.sctp_sm_table_entry*, %struct.sctp_sm_table_entry** %18, align 8
  %36 = getelementptr inbounds %struct.sctp_sm_table_entry, %struct.sctp_sm_table_entry* %35, i32 0, i32 0
  %37 = load i32 (%struct.net.0*, %struct.sctp_endpoint.1*, %struct.sctp_association.2*, i32, i8*, %struct.sctp_cmd_seq*)*, i32 (%struct.net.0*, %struct.sctp_endpoint.1*, %struct.sctp_association.2*, i32, i8*, %struct.sctp_cmd_seq*)** %36, align 8
  %38 = load %struct.net*, %struct.net** %10, align 8
  %39 = bitcast %struct.net* %38 to %struct.net.0*
  %40 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %13, align 8
  %41 = bitcast %struct.sctp_endpoint* %40 to %struct.sctp_endpoint.1*
  %42 = load %struct.sctp_association*, %struct.sctp_association** %14, align 8
  %43 = bitcast %struct.sctp_association* %42 to %struct.sctp_association.2*
  %44 = load i8*, i8** %15, align 8
  %45 = bitcast %struct.sctp_cmd_seq.3* %19 to %struct.sctp_cmd_seq*
  %46 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %9, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %37(%struct.net.0* %39, %struct.sctp_endpoint.1* %41, %struct.sctp_association.2* %43, i32 %47, i8* %44, %struct.sctp_cmd_seq* %45)
  store i32 %48, i32* %20, align 4
  %49 = call i32 (...) @debug_post_sfn()
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %13, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %16, align 4
  %56 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sctp_side_effects(i32 %50, i32 %57, i32 %51, %struct.sctp_endpoint* %52, %struct.sctp_association** %14, i8* %53, i32 %54, %struct.sctp_cmd_seq.3* %19, i32 %55)
  store i32 %58, i32* %21, align 4
  %59 = call i32 (...) @debug_post_sfx()
  %60 = load i32, i32* %21, align 4
  ret i32 %60
}

declare dso_local %struct.sctp_sm_table_entry* @sctp_sm_lookup_event(%struct.net*, i32, i32, i32) #1

declare dso_local i32 @sctp_init_cmd_seq(%struct.sctp_cmd_seq.3*) #1

declare dso_local i32 @debug_pre_sfn(...) #1

declare dso_local i32 @debug_post_sfn(...) #1

declare dso_local i32 @sctp_side_effects(i32, i32, i32, %struct.sctp_endpoint*, %struct.sctp_association**, i8*, i32, %struct.sctp_cmd_seq.3*, i32) #1

declare dso_local i32 @debug_post_sfx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
