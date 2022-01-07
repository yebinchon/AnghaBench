; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_meta_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_meta_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.gfs2_trans* }
%struct.gfs2_trans = type { i32 }
%struct.gfs2_glock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i8* }

@SDF_WITHDRAWN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@DIO_WAIT = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i8* null, align 8
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@TR_TOUCHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_meta_read(%struct.gfs2_glock* %0, i64 %1, i32 %2, i32 %3, %struct.buffer_head** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_glock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca %struct.gfs2_sbd*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca [2 x %struct.buffer_head*], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.gfs2_trans*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  %17 = load %struct.gfs2_glock*, %struct.gfs2_glock** %7, align 8
  %18 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %19, align 8
  store %struct.gfs2_sbd* %20, %struct.gfs2_sbd** %12, align 8
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* @SDF_WITHDRAWN, align 4
  %22 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %23 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %22, i32 0, i32 0
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %28, align 8
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %137

31:                                               ; preds = %5
  %32 = load %struct.gfs2_glock*, %struct.gfs2_glock** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* @CREATE, align 4
  %35 = call %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock* %32, i64 %33, i32 %34)
  store %struct.buffer_head* %35, %struct.buffer_head** %13, align 8
  %36 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  store %struct.buffer_head* %35, %struct.buffer_head** %36, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %38 = call i32 @lock_buffer(%struct.buffer_head* %37)
  %39 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %40 = call i64 @buffer_uptodate(%struct.buffer_head* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  %43 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %44 = call i32 @unlock_buffer(%struct.buffer_head* %43)
  %45 = load i32, i32* @DIO_WAIT, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %60

49:                                               ; preds = %31
  %50 = load i8*, i8** @end_buffer_read_sync, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %54 = call i32 @get_bh(%struct.buffer_head* %53)
  %55 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds [2 x %struct.buffer_head*], [2 x %struct.buffer_head*]* %14, i64 0, i64 %58
  store %struct.buffer_head* %55, %struct.buffer_head** %59, align 8
  br label %60

60:                                               ; preds = %49, %42
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %60
  %64 = load %struct.gfs2_glock*, %struct.gfs2_glock** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %65, 1
  %67 = load i32, i32* @CREATE, align 4
  %68 = call %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock* %64, i64 %66, i32 %67)
  store %struct.buffer_head* %68, %struct.buffer_head** %13, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %70 = call i32 @lock_buffer(%struct.buffer_head* %69)
  %71 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %72 = call i64 @buffer_uptodate(%struct.buffer_head* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %63
  %75 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %76 = call i32 @unlock_buffer(%struct.buffer_head* %75)
  %77 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %78 = call i32 @brelse(%struct.buffer_head* %77)
  br label %88

79:                                               ; preds = %63
  %80 = load i8*, i8** @end_buffer_read_sync, align 8
  %81 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %82 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds [2 x %struct.buffer_head*], [2 x %struct.buffer_head*]* %14, i64 0, i64 %86
  store %struct.buffer_head* %83, %struct.buffer_head** %87, align 8
  br label %88

88:                                               ; preds = %79, %74
  br label %89

89:                                               ; preds = %88, %60
  %90 = load i32, i32* @REQ_OP_READ, align 4
  %91 = load i32, i32* @REQ_META, align 4
  %92 = load i32, i32* @REQ_PRIO, align 4
  %93 = or i32 %91, %92
  %94 = getelementptr inbounds [2 x %struct.buffer_head*], [2 x %struct.buffer_head*]* %14, i64 0, i64 0
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @gfs2_submit_bhs(i32 %90, i32 %93, %struct.buffer_head** %94, i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @DIO_WAIT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %89
  store i32 0, i32* %6, align 4
  br label %137

102:                                              ; preds = %89
  %103 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %104 = load %struct.buffer_head*, %struct.buffer_head** %103, align 8
  store %struct.buffer_head* %104, %struct.buffer_head** %13, align 8
  %105 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %106 = call i32 @wait_on_buffer(%struct.buffer_head* %105)
  %107 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %108 = call i64 @buffer_uptodate(%struct.buffer_head* %107)
  %109 = icmp ne i64 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %136

114:                                              ; preds = %102
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load %struct.gfs2_trans*, %struct.gfs2_trans** %116, align 8
  store %struct.gfs2_trans* %117, %struct.gfs2_trans** %16, align 8
  %118 = load %struct.gfs2_trans*, %struct.gfs2_trans** %16, align 8
  %119 = icmp ne %struct.gfs2_trans* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %114
  %121 = load i32, i32* @TR_TOUCHED, align 4
  %122 = load %struct.gfs2_trans*, %struct.gfs2_trans** %16, align 8
  %123 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %122, i32 0, i32 0
  %124 = call i32 @test_bit(i32 %121, i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %128 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %129 = call i32 @gfs2_io_error_bh_wd(%struct.gfs2_sbd* %127, %struct.buffer_head* %128)
  br label %130

130:                                              ; preds = %126, %120, %114
  %131 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %132 = call i32 @brelse(%struct.buffer_head* %131)
  %133 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %133, align 8
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %6, align 4
  br label %137

136:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %136, %130, %101, %27
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.buffer_head* @gfs2_getbuf(%struct.gfs2_glock*, i64, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_submit_bhs(i32, i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_io_error_bh_wd(%struct.gfs2_sbd*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
