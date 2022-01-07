; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_show_mountd_netid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_show_mountd_netid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.nfs_server = type { i32, i32 }
%struct.sockaddr = type { i32 }

@RPCBIND_NETID_UDP = common dso_local global i8* null, align 8
@RPCBIND_NETID_TCP = common dso_local global i8* null, align 8
@RPCBIND_NETID_UDP6 = common dso_local global i8* null, align 8
@RPCBIND_NETID_TCP6 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c",mountproto=%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.nfs_server*, i32)* @nfs_show_mountd_netid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_show_mountd_netid(%struct.seq_file* %0, %struct.nfs_server* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.nfs_server* %1, %struct.nfs_server** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %10 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %9, i32 0, i32 1
  %11 = bitcast i32* %10 to %struct.sockaddr*
  store %struct.sockaddr* %11, %struct.sockaddr** %7, align 8
  store i8* null, i8** %8, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %33 [
    i32 131, label %15
    i32 130, label %24
  ]

15:                                               ; preds = %3
  %16 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %17 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %23 [
    i32 128, label %19
    i32 129, label %21
  ]

19:                                               ; preds = %15
  %20 = load i8*, i8** @RPCBIND_NETID_UDP, align 8
  store i8* %20, i8** %8, align 8
  br label %23

21:                                               ; preds = %15
  %22 = load i8*, i8** @RPCBIND_NETID_TCP, align 8
  store i8* %22, i8** %8, align 8
  br label %23

23:                                               ; preds = %15, %21, %19
  br label %33

24:                                               ; preds = %3
  %25 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %26 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %32 [
    i32 128, label %28
    i32 129, label %30
  ]

28:                                               ; preds = %24
  %29 = load i8*, i8** @RPCBIND_NETID_UDP6, align 8
  store i8* %29, i8** %8, align 8
  br label %32

30:                                               ; preds = %24
  %31 = load i8*, i8** @RPCBIND_NETID_TCP6, align 8
  store i8* %31, i8** %8, align 8
  br label %32

32:                                               ; preds = %24, %30, %28
  br label %33

33:                                               ; preds = %3, %32, %23
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36, %33
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %45

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %43
  %46 = phi i8* [ %41, %43 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %44 ]
  %47 = call i32 @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %36
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
