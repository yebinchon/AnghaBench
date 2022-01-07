; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_dinode_out.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_dinode_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32, %struct.TYPE_15__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.gfs2_dinode = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8*, i8* }

@GFS2_MAGIC = common dso_local global i32 0, align 4
@GFS2_METATYPE_DI = common dso_local global i32 0, align 4
@GFS2_FORMAT_DI = common dso_local global i32 0, align 4
@GFS2_DIF_EXHASH = common dso_local global i32 0, align 4
@GFS2_FORMAT_DE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_dinode_out(%struct.gfs2_inode* %0, i8* %1) #0 {
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gfs2_dinode*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.gfs2_dinode*
  store %struct.gfs2_dinode* %7, %struct.gfs2_dinode** %5, align 8
  %8 = load i32, i32* @GFS2_MAGIC, align 4
  %9 = call i8* @cpu_to_be32(i32 %8)
  %10 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %11 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %10, i32 0, i32 22
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i8* %9, i8** %12, align 8
  %13 = load i32, i32* @GFS2_METATYPE_DI, align 4
  %14 = call i8* @cpu_to_be32(i32 %13)
  %15 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %16 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %15, i32 0, i32 22
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  %18 = load i32, i32* @GFS2_FORMAT_DI, align 4
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %21 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %20, i32 0, i32 22
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %24 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_be64(i32 %25)
  %27 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %28 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %27, i32 0, i32 21
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_be64(i32 %32)
  %34 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %35 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %34, i32 0, i32 21
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %38 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %43 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %42, i32 0, i32 20
  store i8* %41, i8** %43, align 8
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %45 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %44, i32 0, i32 2
  %46 = call i32 @i_uid_read(%struct.TYPE_15__* %45)
  %47 = call i8* @cpu_to_be32(i32 %46)
  %48 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %49 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %48, i32 0, i32 19
  store i8* %47, i8** %49, align 8
  %50 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %51 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %50, i32 0, i32 2
  %52 = call i32 @i_gid_read(%struct.TYPE_15__* %51)
  %53 = call i8* @cpu_to_be32(i32 %52)
  %54 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %55 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %54, i32 0, i32 18
  store i8* %53, i8** %55, align 8
  %56 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %57 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @cpu_to_be32(i32 %59)
  %61 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %62 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %61, i32 0, i32 17
  store i8* %60, i8** %62, align 8
  %63 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %64 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %63, i32 0, i32 2
  %65 = call i32 @i_size_read(%struct.TYPE_15__* %64)
  %66 = call i8* @cpu_to_be64(i32 %65)
  %67 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %68 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %67, i32 0, i32 16
  store i8* %66, i8** %68, align 8
  %69 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %70 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %69, i32 0, i32 2
  %71 = call i32 @gfs2_get_inode_blocks(%struct.TYPE_15__* %70)
  %72 = call i8* @cpu_to_be64(i32 %71)
  %73 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %74 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %73, i32 0, i32 15
  store i8* %72, i8** %74, align 8
  %75 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %76 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @cpu_to_be64(i32 %79)
  %81 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %82 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %81, i32 0, i32 14
  store i8* %80, i8** %82, align 8
  %83 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %84 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @cpu_to_be64(i32 %87)
  %89 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %90 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %89, i32 0, i32 13
  store i8* %88, i8** %90, align 8
  %91 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %92 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @cpu_to_be64(i32 %95)
  %97 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %98 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %97, i32 0, i32 12
  store i8* %96, i8** %98, align 8
  %99 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %100 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @cpu_to_be64(i32 %101)
  %103 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %104 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %103, i32 0, i32 11
  store i8* %102, i8** %104, align 8
  %105 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %106 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @cpu_to_be64(i32 %107)
  %109 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %110 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %109, i32 0, i32 10
  store i8* %108, i8** %110, align 8
  %111 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %112 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @cpu_to_be64(i32 %113)
  %115 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %116 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %115, i32 0, i32 9
  store i8* %114, i8** %116, align 8
  %117 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %118 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @cpu_to_be32(i32 %119)
  %121 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %122 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %121, i32 0, i32 8
  store i8* %120, i8** %122, align 8
  %123 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %124 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @cpu_to_be16(i32 %125)
  %127 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %128 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %127, i32 0, i32 7
  store i8* %126, i8** %128, align 8
  %129 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %130 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @S_ISDIR(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %2
  %136 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %137 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @GFS2_DIF_EXHASH, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %135
  %143 = load i32, i32* @GFS2_FORMAT_DE, align 4
  br label %145

144:                                              ; preds = %135, %2
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i32 [ %143, %142 ], [ 0, %144 ]
  %147 = call i8* @cpu_to_be32(i32 %146)
  %148 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %149 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %148, i32 0, i32 6
  store i8* %147, i8** %149, align 8
  %150 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %151 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @cpu_to_be16(i32 %152)
  %154 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %155 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %154, i32 0, i32 5
  store i8* %153, i8** %155, align 8
  %156 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %157 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i8* @cpu_to_be32(i32 %158)
  %160 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %161 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %160, i32 0, i32 4
  store i8* %159, i8** %161, align 8
  %162 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %163 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @cpu_to_be64(i32 %164)
  %166 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %167 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %166, i32 0, i32 3
  store i8* %165, i8** %167, align 8
  %168 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %169 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @cpu_to_be32(i32 %172)
  %174 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %175 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %174, i32 0, i32 2
  store i8* %173, i8** %175, align 8
  %176 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %177 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @cpu_to_be32(i32 %180)
  %182 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %183 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  %184 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %185 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @cpu_to_be32(i32 %188)
  %190 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %5, align 8
  %191 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %190, i32 0, i32 0
  store i8* %189, i8** %191, align 8
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @i_uid_read(%struct.TYPE_15__*) #1

declare dso_local i32 @i_gid_read(%struct.TYPE_15__*) #1

declare dso_local i32 @i_size_read(%struct.TYPE_15__*) #1

declare dso_local i32 @gfs2_get_inode_blocks(%struct.TYPE_15__*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
